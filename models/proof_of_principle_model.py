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
    var pIRS1         in Cell; 
    var Akt           in Cell;
    var pAkt          in Cell;
    var TSC2          in Cell;
    var pTSC2         in Cell;
    var RhebGDP       in Cell;
    var RhebGTP       in Cell;
    var mTORC1        in Cell;
    var pmTORC1       in Cell;
    var S6K           in Cell;
    var pS6K          in Cell;
    var FourEBP1      in Cell;
    var pFourEBP1     in Cell;
    const Insulin; 
    
    
    kAktPhos            = 0.1;
    kAktDephos          = 0.1;
    kTSC2Phos           = 0.1;
    kTSC2Dephos         = 0.1;
    kmTORC1Phos         = 0.1;
    kmTORC1Dephos       = 0.1;
    _kS6KPhos            = 0.1;
    kS6KDephos          = 0.1;
    k4EBP1Phos          = 0.1;
    k4EBP1Dephos        = 0.1;
    kIRS1Phos           = 0.1;
    kIRS1Dephos         = 0.1;
    kRhebPhos           = 0.1;
    kRhebDephos         = 0.1;
    
    Insulin             = 0;
    IRS1                = 0; 
    pIRS1               = 10;   
    Akt                 = 10;
    pAkt                = 0;
    TSC2                = 0;
    pTSC2               = 10;
    mTORC1              = 10;
    pmTORC1             = 0;
    S6K                 = 10;
    pS6K                = 0;
    FourEBP1            = 10;
    pFourEBP1           = 0;
    RhebGTP             = 0;
    RhebGDP             = 10;
    
    // observables
    // with mTORC1
    R1f : IRS1 => pIRS1             ; Cell * kIRS1Phos*IRS1*pS6K
    R1b : pIRS1 => IRS1             ; Cell * kIRS1Dephos*pIRS1*Insulin
    R2f : Akt => pAkt               ; Cell * kAktPhos*Akt*IRS1
    R2b : pAkt => Akt               ; Cell * kAktDephos*pAkt
    R3f : TSC2 => pTSC2             ; Cell * kTSC2Phos*TSC2*pAkt
    R3b : pTSC2 => TSC2             ; Cell * kTSC2Dephos*pTSC2*Insulin
    R4f : RhebGDP => RhebGTP        ; Cell * kRhebPhos*RhebGDP*Insulin
    R4b : RhebGTP => RhebGDP        ; Cell * kRhebDephos*RhebGTP*TSC2
    R5f : mTORC1 => pmTORC1         ; Cell * kmTORC1Phos*mTORC1*RhebGTP
    R5b : pmTORC1 => mTORC1         ; Cell * kmTORC1Dephos*pmTORC1
    R6f : S6K => pS6K               ; Cell * _kS6KPhos*S6K*pmTORC1
    R6b : pS6K => S6K               ; Cell * kS6KDephos*pS6K
    R7f : FourEBP1 => pFourEBP1     ; Cell * k4EBP1Phos*FourEBP1*pmTORC1
    R7b : pFourEBP1 => FourEBP1     ; Cell * k4EBP1Dephos*pFourEBP1
end
"""

alexes_suggestion = """

model ModelWithAlexesSuggestion()
    compartment       Cell = 1;
    var Akt           in Cell;
    var pAkt          in Cell;
    var TSC2          in Cell;
    var pTSC2         in Cell;
    var S6K           in Cell;
    var pS6K          in Cell;
    var FourEBP1      in Cell;
    var pFourEBP1     in Cell;
    const Insulin; 
    
    Akt                 = 10;
    pAkt                = 0;
    TSC2                = 10;
    pTSC2               = 0;
    S6K                 = 10;
    pS6K                = 0;
    FourEBP1            = 10;
    pFourEBP1           = 0;
    
    kAktPhos            = 0.1;
    kAktDephos          = 0.1;
    kTSC2Phos           = 0.1;
    kTSC2Dephos         = 0.1;
    _kS6KPhos            = 0.1;
    kS6KDephos          = 0.1;
    k4EBP1Phos          = 0.1;
    k4EBP1Dephos        = 0.1;
    
    Insulin = 0;  
    
    // alexes suggestion
    R1f : Akt => pAkt               ; Cell * kAktPhos*Akt*Insulin
    R1b : pAkt => Akt               ; Cell * kAktDephos*pAkt
    R2f : TSC2 => pTSC2             ; Cell * kTSC2Phos*TSC2*pAkt
    R2b : pTSC2 => TSC2             ; Cell * kTSC2Dephos*pTSC2
    R4f : S6K => pS6K               ; Cell * _kS6KPhos*S6K
    R4b : pS6K => S6K               ; Cell * kS6KDephos*pS6K*TSC2
    R5f : FourEBP1 => pFourEBP1     ; Cell * k4EBP1Phos*FourEBP1
    R5b : pFourEBP1 => FourEBP1     ; Cell * k4EBP1Dephos*pFourEBP1*TSC2
end
"""

daryls_suggestion = """

model ModelWithDarylsSuggestion()
    compartment       Cell = 1;
    var Akt           in Cell;
    var pAkt          in Cell;
    var TSC2          in Cell;
    var pTSC2         in Cell;
    var S6K           in Cell;
    var pS6K          in Cell;
    var FourEBP1      in Cell;
    var pFourEBP1     in Cell;
    const Insulin; 
    
    Akt                 = 10;
    pAkt                = 0;
    TSC2                = 10;
    pTSC2               = 0;
    S6K                 = 10;
    pS6K                = 0;
    FourEBP1            = 10;
    pFourEBP1           = 0;
    
    kAktPhos            = 0.1;
    kAktDephos          = 0.1;
    kTSC2Phos           = 0.1;
    kTSC2Dephos         = 0.1;
    _kS6KPhos            = 0.1;
    kS6KDephos          = 0.1;
    k4EBP1Phos          = 0.1;
    k4EBP1Dephos        = 0.1;
    
    Insulin = 0;  
    // daryls suggestion
    R1f : Akt => pAkt               ; Cell * kAktPhos*Akt*Insulin
    R1b : pAkt => Akt               ; Cell * kAktDephos*pAkt
    R2f : TSC2 => pTSC2             ; Cell * kTSC2Phos*TSC2*pAkt
    R2b : pTSC2 => TSC2             ; Cell * kTSC2Dephos*pTSC2
    R4f : S6K => pS6K               ; Cell * _kS6KPhos*S6K*pTSC2
    R4b : pS6K => S6K               ; Cell * kS6KDephos*pS6K
    R5f : FourEBP1 => pFourEBP1     ; Cell * k4EBP1Phos*FourEBP1*pTSC2
    R5b : pFourEBP1 => FourEBP1     ; Cell * k4EBP1Dephos*pFourEBP1
end
"""

# py3_model = py3.model.loada(model_with_mtor, os.path.abspath('model.cps'))
# py3_model.open()

def plot(ant_str, insulin=0, savefig=True, title='', prefix='', ncols=3,
         wspace=0.25, hspace=0.3):

    seaborn.set_context(context='talk')

    mod = te.loada(ant_str)
    setattr(mod, 'Insulin', insulin)

    data = mod.simulate(0, 50, 51)
    # calculate number of rows needed
    nspecies = data.shape[1]-1
    nplots = nspecies / 2    #for phos and non phos on save ax
    num_rows = int(nplots / ncols)
    remainder = nplots % ncols
    if remainder > 0:
        num_rows += 1

    fig = plt.figure(figsize=(12, 7))
    gs = GridSpec(num_rows, ncols, wspace=wspace, hspace=hspace)
    for i in range(1, nspecies, 2):
        natural_i = int((i-1) / 2)
        ax = fig.add_subplot(gs[natural_i])
        nonp = data.colnames[i]
        p = data.colnames[i+1]
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

# plot(model_with_mtor, hspace=0.55, ncols=3, insulin=0, savefig=True, title='Insulin is set to 0 (constant)', prefix='logic_with_mtor')
# plot(model_with_mtor, hspace=0.55, ncols=3, insulin=1, savefig=True, title='Insulin is set to 1 (constant)', prefix='logic_with_mtor')
# mod = py3.model.loada(model_with_mtor, COPASI_FILE)
# mod.open()
# plot(alexes_suggestion, insulin=0, savefig=True, title='Insulin is set to 0 (constant)', prefix='alexes_suggestion')
# plot(alexes_suggestion, insulin=1, savefig=True, title='Insulin is set to 1 (constant)', prefix='alexes_suggestion')
#
# plot(daryls_suggestion, insulin=0, savefig=True, title='Insulin is set to 0 (constant)', prefix='daryls_suggestion')
# plot(daryls_suggestion, insulin=1, savefig=True, title='Insulin is set to 1 (constant)', prefix='daryls_suggestion')


if __name__ == '__main__':

    print(model_with_mtor)
    mod = py3.model.loada(model_with_mtor, COPASI_FILE)
    # print(mod.simulate(0, 101, 1))
    mod.open()
    # BUILD_NEW = True
    #
    # PROBLEM = '1_first'
    # # passed on to the run_mode in ParameterEstimation. Can be False, True, or 'slurm'
    # three = ['T47D', 'ZR-75', 'MCF7']
    # parameter_dfs = {}
    # for FIT in ['T47D']:
    # # FIT = 'MCF7'
    #     if FIT == 'MCF7':
    #         COPASI_DATA_FILES_SUBSET = [i for i in COPASI_DATA_FILES if 'MCF7' in i]
    #     elif FIT == 'T47D':
    #         COPASI_DATA_FILES_SUBSET = [i for i in COPASI_DATA_FILES if 'T47D' in i]
    #     elif FIT == 'ZR-75':
    #         COPASI_DATA_FILES_SUBSET = [i for i in COPASI_DATA_FILES if 'ZR-75' in i]
    #
    #     if COPASI_DATA_FILES_SUBSET == []:
    #         raise ValueError('COPASI_DATA_FILES is empty')
    #     if len(COPASI_DATA_FILES_SUBSET) != 4:
    #         raise ValueError('Do not have 4 data files...you have {}'.format(len(COPASI_DATA_FILES_SUBSET)))
    #     # FIT = 3 #current
    #     RUN = False
    #     # Open the sbml model in copasi
    #     OPEN = True
    #     # Parameter estimation copy number argument. Is automatically changed when RUN='slurm'
    #     COPY_NUMBER = 1
    #     # Open with copasi with best parameter set from PROBLEM
    #     OPEN_WITH_BEST_PARAMETERS = False
    #     # Run profile likelihoods
    #     RUN_PROFIE_LIKELIHOOD = False
    #     # plot the best fits in presentable format
    #     PLOT_BEST_FIT = False
    #
    #     PLOT_PL = False
    #
    #     # set to True to run a simulation from different initial conditions
    #     RUN_SIMULATION_FROM_DIFFERENT_INITIAL_CONDITIONS = False
    #
    #     # plot likelihood ranks
    #     PLOT_LIKELIHOOD_RANKS = False
    #
    #     COMPARE_PARAMETERS = False
    #
    #     ###########################################
    #
    #     if BUILD_NEW:
    #         mod = py3.model.loada(model_with_mtor, copasi_file=COPASI_FILE)
    #     else:
    #         mod = py3.model.Model(COPASI_FILE)
    #
    #     if RUN == 'slurm':
    #         COPY_NUMBER = 1000
    #     elif RUN == True:
    #         COPY_NUMBER = 1
    #     elif RUN == 'parallel':
    #         COPY_NUMBER = 6
    #
    #     if COPY_NUMBER == 0:
    #         raise ValueError
    #
    # with py3.tasks.ParameterEstimation.Context(mod, COPASI_DATA_FILES_SUBSET, parameters='gm') as context:
    #     context.set('separator', ',')
    #     context.set('run_mode', RUN)
    #     context.set('problem', 'Problem{}'.format(PROBLEM))
    #     context.set('fit', '{}'.format(FIT))
    #     context.set('copy_number', COPY_NUMBER)
    #     context.set('randomize_start_values', True)
    #     context.set('method', 'particle_swarm')
    #     context.set('population_size', 200)
    #     context.set('swarm_size', 300)
    #     context.set('iteration_limit', 4000)
    #     context.set('lower_bound', 0.0001)
    #     context.set('upper_bound', 10000)
    #     context.set('weight_method', 'standard_deviation')
    #     context.set('prefix', '_')
    #     config = context.get_config()
    #
    #     pe = py3.tasks.ParameterEstimation(config)
    #     mod = pe.models.copasi_model.model
    #     # mod = pe.models['model'].model
    #
    #
    # if OPEN:
    #     mod.open()









