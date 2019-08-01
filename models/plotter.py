import glob
import os
from itertools import product

import numpy as np
import pandas
import seaborn
import tellurium as te
from matplotlib import pyplot as plt
from matplotlib.gridspec import GridSpec

seaborn.set_context(context='talk', font_scale=1)
class _Plotter:

    def __init__(self, ant_str, plot_selection, subplot_titles={}, inputs={}, savefig=False,
                 plot_dir=os.path.abspath(''), ncols=3, wspace=0.25, hspace=0.3,
                 parallel=False, use_cached=False, figsize=(12, 7), legend_fontsize=12,
                 legend_loc='best', subplots_adjust={}, **kwargs):
        self.ant_str = ant_str
        self.plot_selection = plot_selection
        self.subplot_titles = subplot_titles
        self.inputs = inputs
        self.savefig = savefig
        self.plot_dir = plot_dir
        self.legend_fontsize = legend_fontsize
        self.legend_loc = legend_loc
        self.ncols = ncols
        self.wspace = wspace
        self.hspace = hspace
        self.parallel = parallel
        self.use_cached = use_cached
        self.figsize = figsize
        self.subplots_adjust = subplots_adjust
        self.kwargs = kwargs

        if not self.savefig:
            self.animation = False

        self.indep_vars_keys = list(inputs.keys())
        self.indep_vars_values = list(product(*inputs.values()))

        self._zipped_inputs = [i for i in zip(self.indep_vars_keys, self.indep_vars_values)]
        self.ntotal = len(self.indep_vars_values)
        self.num_zeros_needed = len(str(self.ntotal))

        self.count = -1

        self.mod = te.loada(self.ant_str)

        for i, specie_list in self.plot_selection.items():
            for j in specie_list:
                if not hasattr(self.mod, j):
                    raise AttributeError('Model has no attribute "{}"'.format(j))

        self._nplots = len(self.plot_selection)
        if self._nplots == 1:
            self.ncols = 1
        self._num_rows = int(self._nplots / ncols)
        self._remainder = self._nplots % ncols
        if self._remainder > 0:
            self._num_rows += 1

        if not self.use_cached:
            if self.parallel:
                self.simulate_parallel()
            else:
                self.simulate()
        else:
            import re
            self.files_ = glob.glob(os.path.join(self.plot_dir, '*.png'))
            self.files_.sort(key=lambda var: [int(x) if x.isdigit() else x for x in re.findall(r'[^0-9]|[0-9]+', var)])

    def simulate(self):
        raise NotImplementedError('Please implement the simulate method')

    def simulate_parallel(self):
        raise NotImplementedError('Please implement the simulate_parallel method')

    def _recursive_fname(self, zipped_inputs) -> str:
        """
        Make an appropriate filename from strings of inputs and values
        :return (str):
        """
        from functools import reduce
        if isinstance(zipped_inputs[0], (list, tuple)):  # if zipped is nested list
            new_zipped = [reduce(lambda x, y: f'{x}_{y}', i) for i in zipped_inputs]
            reduced = self._recursive_fname(new_zipped)
            return reduced
        else:
            reduced = reduce(lambda x, y: f'{x}_{y}', zipped_inputs)
            assert reduced is not None
            return reduced

    def _savefig(self, fname, dire=None):
        if not os.path.isdir(self.plot_dir):
            os.makedirs(self.plot_dir)

        fname = os.path.join(self.plot_dir, f'{fname}-{str(self.count).zfill(self.num_zeros_needed)}.png')
        plt.savefig(fname, dpi=300, bbox_inches='tight')
        print('saved to {}'.format(fname))
        return fname

    def animate(self, fname, ext='mp4', ovewrite=False, fps=8):
        if not hasattr(self, 'files_'):
            raise ValueError('must simulate files first')
        # files_str = "' '".join(self.files_)
        fname = f'{fname}.{ext}'

        if ovewrite:
            if os.path.isfile(fname):
                os.remove(fname)
        s = ''
        for f in self.files_:
            s += "file '{}'\n".format(f)
            tmp = os.path.join(self.plot_dir, 'tmp.txt')
        with open(tmp, 'w') as f:
            f.write(s)

        s = f"ffmpeg -f concat -safe 0 -r {fps} -i {tmp} {fname}"
        print('final command', s)
        os.system(s)
        os.remove(tmp)


class TimeSeries(_Plotter):

    def __init__(self, ant_str, plot_selection, start, stop, steps, **kwargs):
        self.ant_str = ant_str
        self.plot_selection = plot_selection
        self.start = start
        self.stop = stop
        self.steps = steps
        self.kwargs = kwargs
        super().__init__(self.ant_str, self.plot_selection, **kwargs)

    def simulate(self):
        files = []
        for i in range(len(self.indep_vars_values)):
            self.count += 1
            for j in range(len(self.indep_vars_keys)):
                self.mod.reset()
                if not hasattr(self.mod, self.indep_vars_keys[j]):
                    raise ValueError('model does not have an attribute called {}'.format(self.indep_vars_keys[j]))
                setattr(self.mod, self.indep_vars_keys[j], self.indep_vars_values[i][j])
                # print(self.indep_vars_keys[j], self.indep_vars_values[i][j],
                #       getattr(self.mod, self.indep_vars_keys[j], self.indep_vars_values[i][j]))
            files.append(self.do1simulation(self.indep_vars_values[i]))
        self.files_ = files

    def simulate_parallel(self):
        import subprocess
        files = []
        for i in range(len(self.indep_vars_values)):
            self.count += 1
            for j in range(len(self.indep_vars_keys)):
                self.mod.reset()
                if not hasattr(self.mod, self.indep_vars_keys[j]):
                    raise ValueError('model does not have an attribute called {}'.format(self.indep_vars_keys[j]))
                setattr(self.mod, self.indep_vars_keys[j], self.indep_vars_values[i][j])
            file = self.do1simulation(self.indep_vars_values[i])
            file = self.do1simulation(self.indep_vars_values[i])
            subprocess.Popen(self.do1simulation, self.indep_vars_values[i])

            # files.append(self.do1simulation(self.indep_vars_values[i]))
        self.files_ = files

    def do1simulation(self, indep_vars):
        data = self.mod.simulate(self.start, self.stop, self.steps)
        fig = plt.figure(figsize=self.figsize)
        gs = GridSpec(self._num_rows, self.ncols, wspace=self.wspace, hspace=self.hspace)
        for k, v in self.plot_selection.items():
            ax = fig.add_subplot(gs[k])
            for i in v:
                plt.plot(data['time'], data[f'[{i}]'], label=i)
            plt.legend(loc=self.legend_loc, fontsize=self.legend_fontsize)
            plt.title(self.subplot_titles[k])
            seaborn.despine(fig, top=True, right=True)

        # take care of title
        zipped = [i for i in zip(self.indep_vars_keys, indep_vars)]
        plot_suptitle = self._recursive_fname(zipped)
        plt.suptitle(plot_suptitle)
        plt.subplots_adjust(**self.subplots_adjust)
        if self.savefig:
            fname = self._savefig(plot_suptitle)
        else:
            plt.show()
        return fname


class DoseResponse(_Plotter):
    """
    plots dose response at steady state
    """

    def __init__(self, ant_str, plot_selection, variable, values, logx=False, **kwargs):
        self.ant_str = ant_str
        self.plot_selection = plot_selection
        self.kwargs = kwargs
        self.variable = variable
        self.values = values
        self.logx = logx
        super().__init__(self.ant_str, self.plot_selection, **kwargs)

        if not hasattr(self.mod, variable):
            raise ValueError()

    def simulate(self):
        df_lst = []
        for k in self.values:
            setattr(self.mod, self.variable, k)
            x = self.mod.getSteadyStateValues()
            y = self.mod.getFloatingSpeciesIds()
            df_lst.append(pandas.DataFrame(dict(zip(y, x)), index=[k]))
        data = pandas.concat(df_lst)
        print(data)
        fig = plt.figure(figsize=(12, 7))
        gs = GridSpec(self._num_rows, self.ncols, wspace=self.wspace, hspace=self.hspace)
        for k, v in self.plot_selection.items():
            ax = fig.add_subplot(gs[k])
            for metab in v:
                if self.logx:
                    x = np.log10(data.index)
                else:
                    x = data.index
                plt.plot(x, data[metab], label=metab)
            plt.legend(loc='upper right', fontsize=10)
            if self.subplot_titles != {}:
                plt.title(self.subplot_titles[k])
            seaborn.despine(fig, top=True, right=True)

        plt.show()