from collections import OrderedDict
from itertools import product
import numpy as np
import os, glob
import tellurium as te
import pycotools3 as py3
import matplotlib
import matplotlib.pyplot as plt
from matplotlib.gridspec import GridSpec
import seaborn

import site

site.addsitedir('..')
from simple_akt_model import *

matplotlib.use('Qt5Agg')

WORKING_DIR = os.path.dirname(__file__)
COPASI_FILE = os.path.join(WORKING_DIR, 'copasi_model.cps')

model_with_mtor = """

model ModelWithMTOR()
    compartment       Cell = 1;
    var IRS1          in Cell;
    var IRS1_a        in Cell;
    var pIRS1         in Cell; 
    var Akt           in Cell;
    var pAkt          in Cell;
    var TSC2          in Cell;
    var pTSC2         in Cell;
    var RhebGDP       in Cell;
    var RhebGTP       in Cell;
    var mTORC1        in Cell;
    var pmTORC1       in Cell;
    var mTORC1_i      in Cell;
    var S6K           in Cell;
    var pS6K          in Cell;
    var FourEBP1      in Cell;
    var pFourEBP1     in Cell;
    const Rapamycin;    
    const Insulin; 
    
    kIRS1In             = 1;
    kIRS1Out            = 0.1;
    kIRS1Act            = 0.7;
    kIRS1Phos           = 0.7;
    kIRS1Dephos         = 0.1;
    kAktPhos            = 0.1;
    kAktDephos          = 0.1;
    kTSC2Phos           = 0.1;
    kTSC2Dephos         = 0.1;
    kmTORC1Phos         = 0.1;
    kmTORC1Dephos       = 0.1;
    kmTORC1BindRapa     = 2.0;
    kmTORC1UnbindRapa   = 0.1;
    kS6KPhos            = 0.1;
    kS6KDephos          = 0.1;
    k4EBP1Phos          = 0.1;
    k4EBP1Dephos        = 0.1;
    kRhebPhos           = 0.5;
    kRhebDephos         = 0.1;
    
    Rapamycin           = 0;
    Insulin             = 0.01;
    IRS1                = 9.702909427296259;
    IRS1_a              = 0.0060032898852622266;
    pIRS1               = 0.29108728281888757;
    Akt                 = 9.940325345397746;
    pAkt                = 0.05967465460224265;
    TSC2                = 9.436858715615493;
    pTSC2               = 0.5631412843845068;
    RhebGDP             = 7.746008206437293;
    RhebGTP             = 2.2539917935626987;
    mTORC1              = 7.746008206437293;
    pmTORC1             = 2.2539917935626996;
    mTORC1_i            = 0.0;
    S6K                 = 3.0731485001845567;
    pS6K                = 6.926851499815436;
    FourEBP1            = 3.0731485001845575;
    pFourEBP1           = 6.926851499815441;
    
    // observables
    // with mTORC1
    R1In: => IRS1                                   ; Cell * kIRS1In;
    R2Out: IRS1 =>                                  ; Cell * kIRS1Out*IRS1;
    R1a : IRS1 => IRS1_a                            ; Cell * kIRS1Act*IRS1*Insulin;
    R1i : IRS1_a => pIRS1                           ; Cell * kIRS1Phos*IRS1_a*pS6K;
    R1o : pIRS1 =>                                  ; Cell * kIRS1Dephos*pIRS1;
    R2f : Akt => pAkt                               ; Cell * kAktPhos*Akt*IRS1_a;
    R2b : pAkt => Akt                               ; Cell * kAktDephos*pAkt;
    R3f : TSC2 => pTSC2                             ; Cell * kTSC2Phos*TSC2*pAkt;
    R3b : pTSC2 => TSC2                             ; Cell * kTSC2Dephos*pTSC2;
    R4f : RhebGDP => RhebGTP                        ; Cell * kRhebPhos*RhebGDP;
    R4b : RhebGTP => RhebGDP                        ; Cell * kRhebDephos*RhebGTP*TSC2;
    R5f : mTORC1 + RhebGTP => pmTORC1 + RhebGDP     ; Cell * kmTORC1Phos*mTORC1*RhebGTP;
    R5b : pmTORC1 => mTORC1                         ; Cell * kmTORC1Dephos*pmTORC1*RhebGDP;
    R5i : mTORC1 + Rapamycin => mTORC1_i            ; Cell * kmTORC1BindRapa*mTORC1*Rapamycin;
    R5ii: mTORC1_i => mTORC1 + Rapamycin            ; Cell * kmTORC1UnbindRapa*mTORC1_i;
    R6f : S6K => pS6K                               ; Cell * kS6KPhos*S6K*pmTORC1;
    R6b : pS6K => S6K                               ; Cell * kS6KDephos*pS6K;
    R7f : FourEBP1 => pFourEBP1                     ; Cell * k4EBP1Phos*FourEBP1*pmTORC1;
    R7b : pFourEBP1 => FourEBP1                     ; Cell * k4EBP1Dephos*pFourEBP1;
end
"""

tsc2_model = """

model TSC2_component()
    compartment Cell=1;
    var RhebGDP             in Cell;
    var RhebGTP             in Cell;
    var mTORC1              in Cell;
    var pmTORC1             in Cell;
    var TSC2                in Cell;
    var pTSC2               in Cell;
    const Insulin;
    
    Insulin                     = 0;
    TSC2                        = 10;
    pTSC2                       = 0;
    RhebGDP                     = 5;
    RhebGTP                     = 5;
    mTORC1                      = 10;
    mTORC1_RhebGDP              = 0;
    pmTORC1                     = 0;
    
    kTSC2Phos                   = 0.1;     
    kTSC2Dephos                 = 0.1;     
    kRhebLoad                   = 1;     
    kRhebUnload                 = 0.1;     
    kmTORC1Phos                 = 0.1;             
    kmTORC1Dephos               = 0.1;         
    
    
    R1f : TSC2      => pTSC2                    ;           Cell * kTSC2Phos*TSC2*Insulin
    R1b : pTSC2     => TSC2                     ;           Cell * kTSC2Dephos*pTSC2
    R2f : RhebGDP   => RhebGTP                  ;           Cell * kRhebLoad*RhebGDP
    R2b : RhebGTP   => RhebGDP                  ;           Cell * kRhebUnload*RhebGTP*TSC2
    R3f : mTORC1    => pmTORC1                  ;           Cell * kmTORC1Phos*mTORC1*RhebGTP
    R3f : pmTORC1   => mTORC1                   ;           Cell * kmTORC1Dephos*pmTORC1*RhebGDP
    
    
end
"""


# py3_model = py3.model.loada(model_with_mtor, os.path.abspath('model.cps'))
# py3_model.open()

def paired_plot(ant_str, insulin=0, savefig=True, title='', prefix='', ncols=3,
                wspace=0.25, hspace=0.3):
    mod = te.loada(ant_str)
    setattr(mod, 'Insulin', insulin)

    data = mod.simulate(0, 50, 51)
    # calculate number of rows needed
    nspecies = data.shape[1] - 1
    nplots = nspecies / 2  # for phos and non phos on save ax
    num_rows = int(nplots / ncols)
    remainder = nplots % ncols
    if remainder > 0:
        num_rows += 1

    fig = plt.figure(figsize=(12, 7))
    gs = GridSpec(num_rows, ncols, wspace=wspace, hspace=hspace)
    for i in range(1, nspecies, 2):
        natural_i = int((i - 1) / 2)
        ax = fig.add_subplot(gs[natural_i])
        nonp = data.colnames[i]
        p = data.colnames[i + 1]
        plt.plot(data['time'], data[nonp], label='non-phos')
        plt.plot(data['time'], data[p], label='phos')
        plt.title(nonp)
        seaborn.despine(fig, top=True, right=True)
    plt.legend(loc=(1.2, 0.2))

    fig.suptitle(title)

    if savefig:
        dir = os.path.join(os.path.dirname(__file__), 'ProofOfPrincipleModelSims')
        if not os.path.isdir(dir):
            os.makedirs(dir)
        fname = os.path.join(dir, f'{prefix}_insulin_set_to_{insulin}.png')
        plt.savefig(fname, dpi=300, bbox_inches='tight')


class _Plotter:

    def __init__(self, ant_str, plot_selection, subplot_titles=None, inputs=None, savefig=False,
                 plot_dir=os.path.abspath(''), ncols=3, wspace=0.25, hspace=0.3, **kwargs):
        self.ant_str = ant_str
        self.plot_selection = plot_selection
        self.subplot_titles = subplot_titles
        self.inputs = inputs
        self.savefig = savefig
        self.plot_dir = plot_dir
        self.ncols = ncols
        self.wspace = wspace
        self.hspace = hspace
        self.kwargs = kwargs

        self.indep_vars_keys = list(inputs.keys())
        self.indep_vars_values = list(product(*inputs.values()))

        self._zipped_inputs = [i for i in zip(self.indep_vars_keys, self.indep_vars_values)]

        self.mod = te.loada(self.ant_str)

        self._nplots = len(self.plot_selection)
        self._num_rows = int(self._nplots / ncols)
        self._remainder = self._nplots % ncols
        if self._remainder > 0:
            self._num_rows += 1

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

    def _savefig(self, fname):
        if not os.path.isdir(self.plot_dir):
            os.makedirs(self.plot_dir)
        fname = os.path.join(self.plot_dir, f'{fname}.png')
        plt.savefig(fname, dpi=300, bbox_inches='tight')
        print('saved to {}'.format(fname))


class TimeSeries(_Plotter):

    def __init__(self, ant_str, plot_selection, start, stop, steps, **kwargs):
        self.ant_str = ant_str
        self.plot_selection = plot_selection
        self.start = start
        self.stop = stop
        self.steps = steps
        self.kwargs = kwargs
        super().__init__(self.ant_str, self.plot_selection, **kwargs)
        self.simulate()

    def simulate(self):
        for i in range(len(self.indep_vars_values)):
            for j in range(len(self.indep_vars_keys)):
                self.mod.reset()
                if not hasattr(self.mod, self.indep_vars_keys[j]):
                    raise ValueError('model does not have an attribute called {}'.format(self.indep_vars_keys[j]))
                setattr(self.mod, self.indep_vars_keys[j], self.indep_vars_values[i][j])
                print(self.indep_vars_keys[j], self.indep_vars_values[i][j],
                      getattr(self.mod, self.indep_vars_keys[j], self.indep_vars_values[i][j]))
            self.do1simulation(self.indep_vars_values[i])
            # do1simulation(mod, self.indep_vars_keys, ics[i])

    def do1simulation(self, indep_vars):
        data = self.mod.simulate(self.start, self.stop, self.steps)
        fig = plt.figure(figsize=(12, 7))
        gs = GridSpec(self._num_rows, self.ncols, wspace=self.wspace, hspace=self.hspace)
        for k, v in self.plot_selection.items():
            ax = fig.add_subplot(gs[k])
            for i in v:
                plt.plot(data['time'], data[f'[{i}]'], label=i)
            plt.legend(loc='upper right', fontsize=10)
            plt.title(self.subplot_titles[k])
            seaborn.despine(fig, top=True, right=True)

        # take care of title
        zipped = [i for i in zip(self.indep_vars_keys, indep_vars)]
        plot_suptitle = self._recursive_fname(zipped)
        plt.suptitle(plot_suptitle)
        if self.savefig:
            self._savefig(plot_suptitle)
        else:
            plt.show()


def dct_plot(ant_str, dct, subplot_titles, inputs, insulin=0, savefig=True, title='', plot_dir='', ncols=3,
             wspace=0.25, hspace=0.3):
    def recursive_fname(zipped):
        from functools import reduce
        if isinstance(zipped[0], (list, tuple)):  # if zipped is nested list
            new_zipped = [reduce(lambda x, y: f'{x}_{y}', i) for i in zipped]
            reduced = recursive_fname(new_zipped)
            return reduced
        else:
            reduced = reduce(lambda x, y: f'{x}_{y}', zipped)
            assert reduced is not None
            return reduced

    def do1simulation(mod, indep_vars_keys, ic_values):
        data = mod.simulate(0, 50, 51)
        # calculate number of rows needed
        nplots = len(dct)
        num_rows = int(nplots / ncols)
        remainder = nplots % ncols
        if remainder > 0:
            num_rows += 1

        fig = plt.figure(figsize=(12, 7))
        gs = GridSpec(num_rows, ncols, wspace=wspace, hspace=hspace)
        for k, v in dct.items():
            ax = fig.add_subplot(gs[k])
            for i in v:
                plt.plot(data['time'], data[f'[{i}]'], label=i)
            plt.legend(loc='upper right', fontsize=10)
            plt.title(subplot_titles[k])
            seaborn.despine(fig, top=True, right=True)

        zipped = zip(ics, ic_values)
        zipped = [i for i in zipped]
        plot_title = recursive_fname(zipped)

        fig.suptitle(plot_title)

        if savefig:
            dir = os.path.join(os.path.dirname(__file__), 'ProofOfPrincipleModelSims')
            dir = os.path.join(dir, plot_dir)
            if not os.path.isdir(dir):
                os.makedirs(dir)
            fname = os.path.join(dir, f'{plot_title}.png')
            plt.savefig(fname, dpi=300, bbox_inches='tight')
            print('saved to {}'.format(fname))
        else:
            plt.show()


    mod = te.loada(ant_str)
    ics = list(product(*inputs.values()))
    self.indep_vars_keys = list(inputs.keys())
    for i in range(len(ics)):
        for j in range(len(self.indep_vars_keys)):
            mod.reset()
            if not hasattr(mod, self.indep_vars_keys[j]):
                raise ValueError('model does not have an attribute called {}'.format(self.indep_vars_keys[j]))
            setattr(mod, self.indep_vars_keys[j], ics[i][j])
            print(self.indep_vars_keys[j], ics[i][j], getattr(mod, self.indep_vars_keys[j], ics[i][j]))
        do1simulation(mod, self.indep_vars_keys, ics[i])

# paired_plot(model_with_mtor, hspace=0.55, ncols=3, insulin=0, savefig=True, title='Insulin is set to 0 (constant)',
#             prefix='logic_with_mtor')
# paired_plot(model_with_mtor, hspace=0.55, ncols=3, insulin=1, savefig=True, title='Insulin is set to 1 (constant)',
#             prefix='logic_with_mtor')
#

# mod = py3.model.loada(model_with_mtor, COPASI_FILE)
# mod.open()

# paired_plot the best fits in presentable format
# PLOT_BEST_FIT = False
#
# PLOT_PL = False

if __name__ == '__main__':

    BUILD_NEW = True

    ####### Model simulation options
    ACTIVE_ANTIMONY = model_with_mtor

    # Where to put the simulations. Directory called PLOT_DIR will be created and simulations placed inside
    PLOT_BASE_DIR = os.path.join(WORKING_DIR)
    PLOT_DIR = os.path.join(PLOT_BASE_DIR, 'InsulinOnly')

    # Plot the model simulations using dictionaries to supply conditions (parameter scan)
    PLOT_CONDITIONS = True

    STEADY_STATE = False

    DOSE_RESPONSE = False

    ###### Parameter estimation config options ########################################################################
    # Whether or not to configure parameter estimaotin
    CONFIGURE_PARAMETER_ESTIMATION = False

    RUN = False
    # Open the sbml model in copasi
    OPEN = False
    # Parameter estimation copy number argument. Is automatically changed when RUN='slurm'
    COPY_NUMBER = 1
    # Open with copasi with best parameter set from PROBLEM
    OPEN_WITH_BEST_PARAMETERS = False
    # Run profile likelihoods
    RUN_PROFIE_LIKELIHOOD = False

    # set to True to run a simulation from different initial conditions
    RUN_SIMULATION_FROM_DIFFERENT_INITIAL_CONDITIONS = False

    # paired_plot likelihood ranks
    PLOT_LIKELIHOOD_RANKS = False

    # When running the model fitting to all three data sets separately, this will extract the parameters for comparison
    COMPARE_PARAMETERS = False

    # plot the best fits in next
    PLOT_BEST_FIT = False

    # Plot profile likelihoods (if they are there)
    PLOT_PL = False

    PROBLEM = '1_first'
    # passed on to the run_mode in ParameterEstimation. Can be False, True, or 'slurm'

    ################## Execution code #################################
    if BUILD_NEW:
        mod = py3.model.loada(ACTIVE_ANTIMONY, copasi_file=COPASI_FILE)
    else:
        mod = py3.model.Model(COPASI_FILE)

    if OPEN:
        mod.open()

    if PLOT_CONDITIONS:
        species_in_plot = {
            0: ['IRS1', 'IRS1_a', 'pIRS1'],
            1: ['Akt', 'pAkt'],
            2: ['TSC2', 'pTSC2'],
            3: ['RhebGDP', 'RhebGTP'],
            4: ['mTORC1', 'pmTORC1', 'mTORC1_i'],
            5: ['S6K', 'pS6K'],
            6: ['FourEBP1', 'pFourEBP1'],
        }
        titles = {
            0: 'IRS1',
            1: 'Akt',
            2: 'TSC2',
            3: 'Rheb',
            4: 'mTORC1',
            5: 'S6K',
            6: '4EBP'
        }
        inputs = OrderedDict(
            Insulin=[0, 1],
            Rapamycin=[0, 1],
            # RhebGDP=[0, 10, 20, 30, 40]
            # TSC2=[0, 10]
            # S6K=[0, 10, 20, 30, 40]
        )
        TimeSeries(ACTIVE_ANTIMONY, plot_selection=species_in_plot, start=0, stop=50, steps=51,
                   subplot_titles=titles,
                   inputs=inputs, hspace=0.55, ncols=3, savefig=True,
                   plot_dir=PLOT_DIR)
        # dct_plot(ACTIVE_ANTIMONY, species_in_plot, titles, inputs,
        #          hspace=0.55, ncols=3, savefig=True,
        #          plot_dir=PLOT_DIR)

    if STEADY_STATE:
        # from roadrunner import Config
        #
        # Config.setValue(Config.LOADSBMLOPTIONS_CONSERVED_MOIETIES, True)
        mod = te.loada(ACTIVE_ANTIMONY)
        x = mod.getSteadyStateValues()
        y = mod.getFloatingSpeciesIds()
        for i, j in zip(y, x):
            print(f'{i} = {j}')

    if DOSE_RESPONSE:
        mod = te.loada(ACTIVE_ANTIMONY)
        insulin = [0.001, 0.01, 0.1, 1, 10, 100]
        df_lst = []
        for k in insulin:
            mod.Insulin = k
            x = mod.getSteadyStateValues()
            y = mod.getFloatingSpeciesIds()
            import pandas

            df_lst.append(pandas.DataFrame(dict(zip(y, x)), index=[k]))
        df = pandas.concat(df_lst)
        plot_dose_response()

    if CONFIGURE_PARAMETER_ESTIMATION:
        three = ['T47D', 'ZR-75', 'MCF7']
        parameter_dfs = {}
        for FIT in ['T47D']:
            # FIT = 'MCF7'
            if FIT == 'MCF7':
                COPASI_DATA_FILES_SUBSET = [i for i in COPASI_DATA_FILES if 'MCF7' in i]
            elif FIT == 'T47D':
                COPASI_DATA_FILES_SUBSET = [i for i in COPASI_DATA_FILES if 'T47D' in i]
            elif FIT == 'ZR-75':
                COPASI_DATA_FILES_SUBSET = [i for i in COPASI_DATA_FILES if 'ZR-75' in i]

            if COPASI_DATA_FILES_SUBSET == []:
                raise ValueError('COPASI_DATA_FILES is empty')
            if len(COPASI_DATA_FILES_SUBSET) != 4:
                raise ValueError('Do not have 4 data files...you have {}'.format(len(COPASI_DATA_FILES_SUBSET)))

            ###########################################

            if RUN == 'slurm':
                COPY_NUMBER = 1000
            elif RUN == True:
                COPY_NUMBER = 1
            elif RUN == 'parallel':
                COPY_NUMBER = 6

            if COPY_NUMBER == 0:
                raise ValueError

        with py3.tasks.ParameterEstimation.Context(mod, COPASI_DATA_FILES_SUBSET, parameters='gm') as context:
            context.set('separator', ',')
            context.set('run_mode', RUN)
            context.set('problem', 'Problem{}'.format(PROBLEM))
            context.set('fit', '{}'.format(FIT))
            context.set('copy_number', COPY_NUMBER)
            context.set('randomize_start_values', True)
            context.set('method', 'particle_swarm')
            context.set('population_size', 200)
            context.set('swarm_size', 300)
            context.set('iteration_limit', 4000)
            context.set('lower_bound', 0.0001)
            context.set('upper_bound', 10000)
            context.set('weight_method', 'standard_deviation')
            context.set('prefix', '_')
            config = context.get_config()

            pe = py3.tasks.ParameterEstimation(config)
            mod = pe.models.copasi_model.model
            # mod = pe.models['model'].model
