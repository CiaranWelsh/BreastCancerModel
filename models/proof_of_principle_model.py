import pandas
from functools import reduce
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

pi3k_system = """


function MM(km, Vmax, S)
    Vmax * S / (km + S)
end

function MMWithKcat(km, kcat, S, E)
    kcat * E * S / (km + S)
end

function NonCompetitiveInhibition(km, ki, Vmax, n, I, S)
    Vmax * S / ( (km + S) * (1 + (I / ki)^n ) )
end

function NonCompetitiveInhibitionWithKcat(km, ki, kcat, E, n, I, S)
    kcat * E * S / ( (km + S) * (1 + (I / ki)^n ) )
end

function NonCompetitiveInhibitionWithKcatAndExtraActivator(km, ki, kcat, E1, E2, n, I, S)
    kcat * E1 * E2 * S / ( (km + S) * (1 + (I / ki)^n ) )
end


function MA1(k, S)
    k * S
end

function MA2(k, S1, S2)
    k * S1 * S2
end

function MA1Mod(k, S, M)
    k * S * M
end

function MA2Mod(k, S1, S2, M)
    k * S1 * S2 * M
end

function CompetitiveInhibitionWithKcat(km, ki, kcat, E, I, S)
    kcat * E * S / (km + S + ((km * I )/ ki)  )
end    

function CompetitiveInhibition(Vmax, km, ki, I, S)
    Vmax * S / (km + S + ((km * I )/ ki)  )
end

function Hill(km, kcat, E, S, h)
    kcat * E * (S / km)^h  /   (1 + (S / km)^h )
end


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
    var Pras40        in Cell;
    var mTORC1_Pras40_Lys in Cell;
    var mTORC1_Pras40_Cyt in Cell;
    var pmTORC1        in Cell;
    var pmTORC1       in Cell;
    var mTORC1_i      in Cell;
    var mTORC1_ii     in Cell;
    var mTORC1_iii     in Cell;
    var S6K           in Cell;
    var pS6K          in Cell;
    var FourEBP1      in Cell;
    var pFourEBP1     in Cell;
    const Rapamycin;    
    const Insulin; 
    
    kIRS1In             = 1;
    kIRS1Out            = 0.1;
    kIRS1Act_km         = 1;
    kIRS1Act_kcat       = 10;
    kIRS1Act_h          = 2;
    kIRS1Act            = 0.1;
    kIRS1Inact          = 0.1;
    kIRS1Phos           = 0.5;
    kIRS1Dephos         = 0.1;
    kAktPhos            = 0.1;
    kAktDephos          = 0.1;
    kTSC2Phos           = 0.1;
    kTSC2Dephos         = 0.1;
    kmTORC1ToLys        = 0.1;
    kmTORC1ToCyt        = 0.1;
    kmTORC1Act          = 0.1;
    kmTORC1Dephos       = 1;
    kmTORC1BindRapa     = 2.0;
    kmTORC1UnbindRapa   = 0.1;
    kS6KPhos_km         = 100;
    kS6KPhos_kcat       = 2;
    kS6KDephos          = 0.1;
    k4Phos_km           = 5;
    k4EBP1Phos_kcat     = 5;
    k4EBP1Dephos        = 0.1;
    kRhebPhos           = 0.1;
    kRhebDephos         = 0.1;
    kRhebIn             = 10; 
    kRhebOut            = 0.1; 
    kmTORC1BindPras40   = 0.1;
    kPras40Dephos       = 0.1;
    
    Rapamycin           = 0;
    Insulin             = 0;
    AA                  = 1;
    IRS1 = 10.000001549282924;
    IRS1_a = -7.275110416987059e-25;
    pIRS1 = 1.3306498814441865e-24;
    Akt = 10.005001550057566;
    pAkt = -5.983678207133178e-24;
    TSC2 = 10.005001550057566;
    pTSC2 = 0.0;
    RhebGDP = 90.91323534809237;
    RhebGTP = 9.086780144736869;
    Pras40 = 8.659321556325276e-09;
    mTORC1_Pras40_Lys = 5.012500772248403;
    mTORC1_Pras40_Cyt = 5.012500772248403;
    pmTORC1 = 8.659321555454408e-09;
    mTORC1_i = -4.470501429353354e-16;
    mTORC1_ii = 1.1003168937815499e-25;
    mTORC1_iii = -1.6213592874447562e-24;
    S6K = 10.005001534306187;
    pS6K = 1.575137776819416e-08;
    FourEBP1 = 10.005001261365424;
    pFourEBP1 = 2.8869214083423275e-07;
    Rapamycin = 0.0;
    ppPras40 = -2.7062868383664535e-22;
    
    // observables
    // MM(km, Vmax, S)
    // MMWithKcat(km, kcat, S, E)
    // Hill(km, kcat, L, S, h) or Hill(km, kcat, E, S, h)
    R1In    : => IRS1                                               ; Cell * kIRS1In;
    R2Out   : IRS1 =>                                               ; Cell * kIRS1Out*IRS1;
    R1f     : IRS1 => IRS1_a                                        ; Cell * kIRS1Act*IRS1*Insulin;//Hill(kIRS1Act_km, kIRS1Act_kcat, Insulin, IRS1, kIRS1Act_h);
    R1b     : IRS1_a => IRS1                                        ; Cell * kIRS1Inact*IRS1_a;
    R1i     : IRS1_a => pIRS1                                       ; Cell * kIRS1Phos*IRS1_a*pS6K;
    R1o     : pIRS1 =>                                              ; Cell * kIRS1Dephos*pIRS1;
    R2f     : Akt => pAkt                                           ; Cell * kAktPhos*Akt*IRS1_a;
    R2b     : pAkt => Akt                                           ; Cell * kAktDephos*pAkt;
    R3f     : TSC2 => pTSC2                                         ; Cell * kTSC2Phos*TSC2*pAkt;
    R3b     : pTSC2 => TSC2                                         ; Cell * kTSC2Dephos*pTSC2;
    
    R4Out   : RhebGDP =>                                            ; Cell * kRhebOut*RhebGDP;
    R4In    : => RhebGTP                                            ; Cell * kRhebIn;
    R4Out2  : RhebGTP =>                                            ; Cell * kRhebOut*RhebGTP; 
    
    R4f     : RhebGDP => RhebGTP                                    ; Cell * kRhebPhos*RhebGDP*AA;
    R4b     : RhebGTP => RhebGDP                                    ; Cell * kRhebDephos*RhebGTP*TSC2;
    R5f     : mTORC1_Pras40_Cyt => mTORC1_Pras40_Lys                ; Cell * kmTORC1ToLys*mTORC1_Pras40_Cyt*AA;
    R5b     : mTORC1_Pras40_Lys => mTORC1_Pras40_Cyt                ; Cell * kmTORC1ToCyt*mTORC1_Pras40_Lys;
    R6f     : mTORC1_Pras40_Lys + RhebGTP => pmTORC1 + ppPras40 + RhebGDP ; Cell * kmTORC1Act*pAkt*RhebGTP*mTORC1_Pras40_Lys;
    R6b     : pmTORC1 + Pras40 => mTORC1_Pras40_Lys                  ; Cell * kmTORC1BindPras40*pmTORC1*Pras40;
    R6c     : ppPras40 => Pras40                                    ; Cell * kPras40Dephos*ppPras40;
    R7if    : mTORC1_Pras40_Cyt + Rapamycin => mTORC1_i             ; Cell * kmTORC1BindRapa*mTORC1_Pras40_Cyt*Rapamycin;
    R7ib    : mTORC1_i => mTORC1_Pras40_Cyt + Rapamycin             ; Cell * kmTORC1UnbindRapa*mTORC1_i;
    R8iif   : mTORC1_Pras40_Lys + Rapamycin => mTORC1_ii            ; Cell * kmTORC1BindRapa*mTORC1_Pras40_Lys*Rapamycin;
    R8iib   : mTORC1_ii => mTORC1_Pras40_Lys + Rapamycin            ; Cell * kmTORC1UnbindRapa*mTORC1_ii;
    R9iiif  : pmTORC1 + Rapamycin => mTORC1_iii                      ; Cell * kmTORC1BindRapa*pmTORC1*Rapamycin;
    R9iiib  : mTORC1_iii => pmTORC1 + Rapamycin                      ; Cell * kmTORC1UnbindRapa*mTORC1_iii;
    R10f     : S6K => pS6K                                          ; Cell * MMWithKcat(kS6KPhos_km, kS6KPhos_kcat, S6K, pmTORC1);
    R10b     : pS6K => S6K                                          ; Cell * kS6KDephos*pS6K;
    R11f     : FourEBP1 => pFourEBP1                                ; Cell * MMWithKcat(k4Phos_km, k4EBP1Phos_kcat, FourEBP1, pmTORC1); 
    R11b     : pFourEBP1 => FourEBP1                                ; Cell * k4EBP1Dephos*pFourEBP1;
end
"""
'''
Notes
-----
- Elimination of TSC2 function hypercharges RhebGTP
  leading to constitutive activation of pmTORC1. 
- However, in this model, pmTORC1 activation is dependent on 
  pAkt two-fold 1) by deactivating TSC2 and 2) by 
  phosphorylating 
'''

class _Plotter:

    def __init__(self, ant_str, plot_selection, subplot_titles={}, inputs={}, savefig=False,
                 plot_dir=os.path.abspath(''), ncols=3, wspace=0.25, hspace=0.3,
                 parallel=False, use_cached=False, **kwargs):
        self.ant_str = ant_str
        self.plot_selection = plot_selection
        self.subplot_titles = subplot_titles
        self.inputs = inputs
        self.savefig = savefig
        self.plot_dir = plot_dir
        self.ncols = ncols
        self.wspace = wspace
        self.hspace = hspace
        self.parallel = parallel
        self.use_cached = use_cached
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

    def _savefig(self, fname):
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
        fig = plt.figure(figsize=(12, 7))
        gs = GridSpec(self._num_rows, self.ncols, wspace=self.wspace, hspace=self.hspace)
        print(data.colnames)
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


if __name__ == '__main__':

    BUILD_NEW = True

    ####### Task simulation options
    ACTIVE_ANTIMONY = pi3k_system

    # Plot the model simulations using dictionaries to supply conditions (parameter scan)
    PLOT_CONDITIONS = True

    STEADY_STATE = False

    EXTRACT_ICS_FROM_COPASI = False
    if EXTRACT_ICS_FROM_COPASI and BUILD_NEW:
        raise ValueError('You are trying to extract parameters from a newly built model')

    DOSE_RESPONSE = False

    CONFIGURE_PARAMETER_ESTIMATION = False

    OPEN = False
    ###### Parameter estimation config options ########################################################################
    # Whether or not to configure parameter estimaotin

    RUN = False
    # Open the sbml model in copasi
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

        VALIDATION_PLOTS = True
        # Where to put the simulations. Directory called PLOT_DIR will be created and simulations placed inside
        PLOT_BASE_DIR = os.path.join(WORKING_DIR, 'ToyModelOutput')
        PLOT_DIR = os.path.join(PLOT_BASE_DIR, 'mTORC1PhosScan/low_kmTORC1Phos_km')
        # PLOT_DIR = os.path.join(PLOT_BASE_DIR, 'InsAARapaInTSC2KOConditions')
        # PLOT_DIR = os.path.join(PLOT_BASE_DIR, 'InsulinAndAA')
        # PLOT_DIR = os.path.join(PLOT_BASE_DIR, 'InsulinAndRapamycin')
        # PLOT_DIR = os.path.join(PLOT_BASE_DIR, 'AminoAcidsAndRapamycin')
        PLOT_DIR = os.path.join(PLOT_BASE_DIR, 'TSC2KnockdownAndRapa')
        # PLOT_DIR = os.path.join(PLOT_BASE_DIR, 'ScratchPad')

        DELETE_EXISTING_FILES = False
        if DELETE_EXISTING_FILES:
            for i in glob.glob(os.path.join(PLOT_DIR, '*.png')):
                os.remove(i)

        species_in_plot = {
            0: ['IRS1', 'IRS1_a', 'pIRS1'],
            1: ['Akt', 'pAkt'],
            2: ['TSC2', 'pTSC2'],
            3: ['RhebGDP', 'RhebGTP'],
            4: ['pmTORC1', 'mTORC1_Pras40_Lys', 'mTORC1_Pras40_Cyt'],
            5: ['mTORC1_i', 'mTORC1_iii'],
            6: ['S6K', 'pS6K'],
            7: ['FourEBP1', 'pFourEBP1'],
            8: ['ppPras40', 'Pras40']
        }
        titles = {
            0: 'IRS1',
            1: 'Akt',
            2: 'TSC2',
            3: 'Rheb',
            4: 'pmTORC1',
            5: 'mTORC1_i',
            6: 'S6K',
            7: '4EBP',
            8: 'ppPras40'
        }

        if VALIDATION_PLOTS:
            inputs = OrderedDict(
                AAInsulinAndRapamycinOnly=OrderedDict(
                    Insulin=[0, 1],
                    AA=[0, 1],
                    Rapamycin=[0, 1]
                ),
                InsulinAndRapaWithTSC2KO=OrderedDict(
                    Insulin=[0, 1],
                    Rapamycin=[0, 1],
                    AA=[1],
                    TSC2=[0, 10]
                )                ,
            InsulinWithTSC2KO=OrderedDict(
                    Insulin=[0, 1],
                    TSC2=[0, 10]
                )
            )
            validations_dir = os.path.join(PLOT_BASE_DIR, 'validations')
            for k, v in inputs.items():
                plot_dir = os.path.join(validations_dir, k)
                ts = TimeSeries(ACTIVE_ANTIMONY, plot_selection=species_in_plot,
                                start=0, stop=50, steps=51,
                                subplot_titles=titles,
                                inputs=v, hspace=0.55, ncols=3, savefig=True,
                                plot_dir=plot_dir
                                )

        else:
            x = np.linspace(0.1, 5, 100)
            x = [round(i, 2) for i in x]
            inputs = OrderedDict(
                Insulin=[1],
                AA=[1],
                Rapamycin=[0, 1],
                TSC2=[0, 10],
                # kRhebIn=x
                # TSC2=x
                # kmTORC1Phos_kcat=[0.001, 0.01, 0.1, 1, 10],
                # kmTORC1Phos_km=[0.001],
                # Rapamycin=[0, 1],
                # RhebGDP=[0, 10, 20, 30, 40]
                # TSC2=range(11)
                # S6K=[0, 10, 20, 30, 40]
            )
            ts = TimeSeries(ACTIVE_ANTIMONY, plot_selection=species_in_plot,
                            start=0, stop=50, steps=51,
                            subplot_titles=titles,
                            inputs=inputs, hspace=0.55, ncols=3, savefig=False,
                            plot_dir=PLOT_DIR, use_cached=False, parallel=False)
            # ts.animate(os.path.join(PLOT_DIR, 'Insulin1Rapa0RhebScan'),
            #            ovewrite=True,
            #            fps=10)

    if STEADY_STATE:
        # from roadrunner import Config
        #
        # Config.setValue(Config.LOADSBMLOPTIONS_CONSERVED_MOIETIES, True)
        mod = te.loada(ACTIVE_ANTIMONY)
        mod.conservedMoietyAnalysis = True
        x = mod.getSteadyStateValues()
        y = mod.getFloatingSpeciesIds()
        for i, j in zip(y, x):
            print(f'{i} = {j}')

    if EXTRACT_ICS_FROM_COPASI:
        if not isinstance(mod, py3.model.Model):
            raise ValueError

        s = ''
        for i in mod.metabolites:
            s += f'{i.name} = {i.concentration};\n'

        print(s)

    if DOSE_RESPONSE:
        plot_selection = {
            0: ['IRS1_a'],
        }
        vals = np.linspace(0, 100, 101)
        dr = DoseResponse(ACTIVE_ANTIMONY, plot_selection, variable='Insulin', values=vals,
                          logx=True)

        # mod = te.loada(ACTIVE_ANTIMONY)
        # insulin = [0.001, 0.01, 0.1, 1, 10, 100]
        # df_lst = []
        # for k in insulin:
        #     mod.Insulin = k
        #     x = mod.getSteadyStateValues()
        #     y = mod.getFloatingSpeciesIds()
        #     import pandas
        #
        #     df_lst.append(pandas.DataFrame(dict(zip(y, x)), index=[k]))
        # df = pandas.concat(df_lst)
        # plot_dose_response()

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
