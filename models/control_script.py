from collections import OrderedDict
import numpy as np
import os, glob
import tellurium as te
import pycotools3 as py3
import matplotlib
import site

site.addsitedir('..')
from simple_akt_model import *
from model_strings import *

from models.plotter import TimeSeries, DoseResponse

matplotlib.use('Qt5Agg')

WORKING_DIR = os.path.dirname(os.path.dirname(__file__))
MODELS_DIR = os.path.join(WORKING_DIR, 'models')
COPASI_FILE = os.path.join(MODELS_DIR, 'copasi_model.cps')
SIMULATIONS_DIR = os.path.join(WORKING_DIR, 'simulations')
PLOT_BASE_DIR = os.path.join(SIMULATIONS_DIR, 'ExtendedPI3KModel')
VALIDATIONS_DIR = os.path.join(PLOT_BASE_DIR, 'validations')
SCRATCH_DIR = os.path.join(PLOT_BASE_DIR, 'ScratchPad')

# Build new model using antimony if True, otherwise look for an existing model in the correct place (error if not exist)
BUILD_NEW = True

# Which antimony string to use.
ACTIVE_ANTIMONY = expanded_pi3k_model

####### Task simulation options
# Plot the model simulations using dictionaries to supply conditions (parameter scan)
PLOT_CONDITIONS = True

if PLOT_CONDITIONS:
    # Run all configured validation plots if True. Saves simulations to a folder. Otherwise, write plots to
    #  disposable SCRATCH dir. When False, existing png files are deleted prior to simulation to prevent
    #  build up of simulation files.
    VALIDATION_PLOTS = False
    # When doing not validation plots, this flag turn on deleting existing png files
    DELETE_EXISTING_FILES = True
    # Build animation from parameter scan using ffmpeg
    ANIMATION = False
    # how big to plot the figure
    FIGSIZE = (20, 15)

    # INPUTS for Scratch simulations only
    x = np.linspace(0.01, 3, 300)
    x = [round(i, 2) for i in x]
    inputs = OrderedDict(
        Insulin=[0, 1],
        EGF=[0, 1],
        AA=[0, 1],
        Wortmannin=[0, 1],
        Rapamycin=[0, 1],
        AZD=[0, 1],
        MK2206=[0, 1],
        # TSC2=[0, 10],
        # kRhebIn=x
        # TSC2=x
        # kmTORC1Phos_kcat=[0.001, 0.01, 0.1, 1, 10],
        # kmTORC1Phos_km=[0.001],
        # Rapamycin=[0, 1],
        # RhebGDP=[0, 10, 20, 30, 40]
        # TSC2=range(11)
        # S6K=[0, 10, 20, 30, 40]
    )

# Calculate the current steady state using telurium
STEADY_STATE = False

# Get initial concentrations from copasi file in antimony format
EXTRACT_ICS_FROM_COPASI = False
if EXTRACT_ICS_FROM_COPASI and BUILD_NEW:
    raise ValueError('You are trying to extract parameters from a newly built model')

# simulate a dose response at steady state
DOSE_RESPONSE = False

# Open model in COPASI
OPEN = False
#
CONFIGURE_PARAMETER_ESTIMATION = False
if CONFIGURE_PARAMETER_ESTIMATION:
    ###### Parameter estimation config options ########################################################################
    # The following options are only available when CONFIGURE_PARAMETER_ESTIMATION = True
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

if __name__ == '__main__':

    # passed on to the run_mode in ParameterEstimation. Can be False, True, or 'slurm'

    ################## Execution code #################################
    if BUILD_NEW:
        mod = py3.model.loada(ACTIVE_ANTIMONY, copasi_file=COPASI_FILE)
    else:
        mod = py3.model.Model(COPASI_FILE)

    if OPEN:
        mod = py3.tasks.TimeCourse(mod, end=150, intervals=151, step_size=1).model
        mod.open()

    if PLOT_CONDITIONS:

        # Where to put the simulations. Directory called PLOT_DIR will be created and simulations placed inside

        if DELETE_EXISTING_FILES:
            for i in glob.glob(os.path.join(SCRATCH_DIR, '*.png')):
                os.remove(i)

        species_in_plot_for_simple_akt_model = {
            0: ['IRS1', 'IRS1_a', 'pIRS1'],
            1: ['Akt', 'pAkt'],
            2: ['TSC2', 'pTSC2'],
            3: ['RhebGDP', 'RhebGTP'],
            4: ['pmTORC1', 'mTORC1_Pras40_Lys', 'mTORC1_Pras40_Cyt'],
            5: ['mTORC1_i', 'mTORC1_ii', 'mTORC1_iii'],
            6: ['S6K', 'pS6K'],
            7: ['FourEBP1', 'pFourEBP1'],
            8: ['ppPras40', 'Pras40']
        }
        titles_for_simple_akt_model = {
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

        plot_species = {
            0: ['IRS1', 'IRS1a', 'pIRS1'],
            1: ['PI3K', 'pPI3K'],
            2: ['PIP2', 'PIP3'],
            3: ['PDK1', 'PDK1_PIP3', 'Akt_PIP3'],
            4: ['Akt', 'Akt_PIP3', 'pAkt', 'Akti'],
            5: ['TSC2', 'pTSC2'],
            6: ['RhebGDP', 'RhebGTP'],
            7: ['ppPras40'],
            8: ['mTORC1cyt', 'mTORC1_Pras40cyt', 'mTORC1lys', 'pmTORC1'],
            9: ['RAG_GDP', 'RAG_GTP'],
            10: ['mTORC1i', 'mTORC1ii', 'mTORC1iii', 'mTORC1iv'],
            11: ['FourEBP1', 'pFourEBP1'],
            12: ['S6K', 'pS6K'],
            13: ['AMPK', 'pAMPKi', 'pAMPK'],
            14: ['CaMKK2a', 'CaMKK2', 'Ca2'],
            15: ['LKB1', 'LKB1a'],
            16: ['PLCeps', 'pPLCeps'],
            17: ['IP3', 'DAG', 'IpR', 'IpRa'],
            18: ['RTK', 'pRTK', 'pRTKa'],
            19: ['Sos', 'pSos'],
            20: ['Raf', 'pRaf'],
            21: ['Mek', 'pMek', 'Meki'],
            22: ['Erk', 'pErk'],
            23: ['RasGDP', 'RasGTP'],
            24: ['DUSPmRNA', 'DUSP']

        }
        plot_titles = {
            0: 'IRS1',
            1: 'PI3K',
            2: 'PIP',
            3: 'PDK1',
            4: 'Akt',
            5: 'TSC2',
            6: 'Rheb',
            7: 'Pras40',
            8: 'mTORC1cyt',
            9: 'RAG',
            10: 'mTORC1i',
            11: 'FourEBP1',
            12: 'S6K',
            13: 'AMPK',
            14: 'CaMKK2',
            15: 'LKB1',
            16: 'PLCeps',
            17: 'IP3',
            18: 'RTK',
            19: 'Sos',
            20: 'Raf',
            21: 'Mek',
            22: 'Erk',
            23: 'Ras',
            24: 'DUSP',
        }

        if VALIDATION_PLOTS:
            from itertools import combinations

            # make all two way inputs
            all_inputs = ['AA', 'Insulin', 'EGF', 'Wortmannin', 'Rapamycin', 'AZD', 'MK2206']
            two_way_combs = [{f'{i}With{j}': {i: [0, 1], j: [0, 1]}} for i, j in combinations(all_inputs, 2)]
            three_way_combs = [{f'{i}With{j}With{k}': {i: [0, 1], j: [0, 1], k: [0, 1]}} for i, j, k in
                               combinations(all_inputs, 3)]
            inputs = OrderedDict(
                InsulinWithTSC2KO=OrderedDict(
                    Insulin=[0, 1],
                    TSC2=[0, 10]
                ),
            )
            [inputs.update(i) for i in two_way_combs]
            [inputs.update(i) for i in three_way_combs]
            for k, v in inputs.items():
                directory = os.path.join(VALIDATIONS_DIR, k)
                if not os.path.isdir(directory):
                    os.makedirs(directory)
                ts = TimeSeries(ACTIVE_ANTIMONY, plot_selection=plot_species,
                                start=0, stop=150, steps=151,
                                figsize=FIGSIZE,
                                subplot_titles=plot_titles,
                                inputs=v, hspace=0.55, ncols=5, savefig=True,
                                plot_dir=directory
                                )

        else:

            ts = TimeSeries(ACTIVE_ANTIMONY, plot_selection=plot_species,
                            start=0, stop=150, steps=151,
                            subplot_titles=plot_titles,
                            figsize=FIGSIZE,
                            inputs=inputs, hspace=0.55, ncols=5, savefig=True,
                            plot_dir=SCRATCH_DIR, use_cached=False, parallel=False
                            )
            if ANIMATION:
                ts.animate(os.path.join(SCRATCH_DIR, 'InsulinOnkmTORCActScan'),
                           ovewrite=True,
                           fps=10)

    if STEADY_STATE:
        # from roadrunner import Config
        #
        # Config.setValue(Config.LOADSBMLOPTIONS_CONSERVED_MOIETIES, True)
        mod = te.loada(ACTIVE_ANTIMONY)
        mod.conservedMoietyAnalysis = False
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
