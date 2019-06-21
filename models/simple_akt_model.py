from pathlib import Path
import os, glob
import pandas, numpy
from collections import OrderedDict
import tellurium as te
import site
from sys import platform
import matplotlib.pyplot as plt
import seaborn
import matplotlib

site.addsitedir(r'D:\pycotools3')  # home computer
site.addsitedir(r'/home/ncw135/Documents/pycotools3')  # linux
site.addsitedir(r'/mnt/nfs/home/b3053674/pycotools3')  # cluster
site.addsitedir(r'/mnt/nfs/home/b3053674/WorkingDirectory/MesiSTRAT2/BreastCancerModel/data')  # cluster
from pycotools3 import model, tasks, viz

try:
    # for my computer
    from data.data_analysis import GetData
except ImportError:
    # for cluster macihne
    from data_analysis import GetData
matplotlib.use('Qt5Agg')
seaborn.set_context('talk')

WORKING_DIRECTORY = Path(os.path.abspath(__file__)).parents[1]

# WORKING_DIRECTORY = r'D:\BreastCancerModel'
MODELS_DIRECTORY = os.path.join(WORKING_DIRECTORY, 'models')
DATA_DIRECTORY = os.path.join(WORKING_DIRECTORY, 'data')
EXPERIMENTAL_DATA_FILE = os.path.join(DATA_DIRECTORY, 'experimental_data.xlsx')
SIMULATION_GRAPHS_DIR = os.path.join(DATA_DIRECTORY, 'simulation_graphs')
if not os.path.isdir(SIMULATION_GRAPHS_DIR):
    os.makedirs(SIMULATION_GRAPHS_DIR)

SS_DATA_FILE = fname = os.path.join(DATA_DIRECTORY, 'ss_data.csv')
COPASI_FILE = os.path.join(MODELS_DIRECTORY, 'simple_akt_model.cps')
COPASI_FORMATTED_DATA = fname = os.path.join(DATA_DIRECTORY, 'copasi_formatted_data.csv')
COPASI_INTERP_DATA = fname = os.path.join(DATA_DIRECTORY, 'copasi_data_interp.csv')
COPASI_INTERP_DATA_FILES = glob.glob(COPASI_INTERP_DATA[:-4] + '*')
COPASI_INTERP_DATA_FILES = [i for i in COPASI_INTERP_DATA_FILES if i != COPASI_INTERP_DATA]

model_string = """

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

function Hill(km, kcat, L, S, h)
    kcat * L * (S / km)^h  /   1 + (S / km)^h 
end

model SimpleAktModel()
    compartment             Cell = 1;
    var IRS1                in Cell;
    var IRS1pS636_639       in Cell;
    var Akt                 in Cell;
    var AktpT308            in Cell;
    var TSC2                in Cell;
    var TSC2pT1462          in Cell;
    var PRAS40              in Cell;
    var PRAS40pT246         in Cell;
    var S6K                 in Cell;
    var S6KpT389            in Cell;
    var FourEBP1            in Cell;
    var FourE_BP1pT37_46    in Cell;    
    var Erk                 in Cell;
    var Erk_pT202_Y204      in Cell;
    const Insulin           in Cell;
    
    // global variables
    Insulin = 1;
    
    // Offset is added onto total proteins in order to prevent phospho being present in 
    //  greater quantity than total
    offset_amount                  = 1
    
    FourEBP1_tot                  := 0.458272 + offset_amount;
    Akt_tot                       := 1.241997 + offset_amount;
    IRS1_tot                      := 1.925974 + offset_amount;
    TSC2_tot                      := 1.136033 + offset_amount;
    PRAS40_tot                    := 0.981968 + offset_amount;
    S6K_tot                       := 1.330735 + offset_amount;
    Erk_tot                       := 1.305048 + offset_amount;

    // we do not need to fit total proteins
    // IRS1_obs                   := IRS1_tot;       
    // Akt_obs                    := Akt_tot;   
    // TSC2_obs                   := TSC2_tot;       
    // PRAS40_obs                 := PRAS40_tot;       
    // S6K_obs                    := S6K_tot ;       
    
    IRS1pS636_639_obs             := IRS1pS636_639;          
    AktpT308_obs                  := AktpT308;           
    TSC2pT1462_obs                := TSC2pT1462;              
    PRAS40pT246_obs               := PRAS40pT246;        
    S6KpT389_obs                  := S6KpT389;
    FourE_BP1pT37_46_obs          := FourE_BP1pT37_46;           
    Erk_pT202_Y204_obs            := Erk_pT202_Y204
    
    //initial conditions
    IRS1pS636_639                  = 0.861333;
    AktpT308                       = 0.486243;
    TSC2pT1462                     = 0.644957;
    PRAS40pT246                    = 0.387190  
    FourE_BP1pT37_46               = 0.488169;
    S6KpT389                       = 0.395656;
    Erk_pT202_Y204                 = 0.115661;
    Feedback                       = 0;
    
    IRS1                           := IRS1_tot       -     IRS1pS636_639     ;
    Akt                            := Akt_tot        -     AktpT308          ;
    TSC2                           := TSC2_tot       -     TSC2pT1462        ;
    PRAS40                         := PRAS40_tot     -     PRAS40pT246       ;
    FourEBP1                       := FourEBP1_tot   -     FourE_BP1pT37_46  ;
    S6K                            := S6K_tot        -     S6KpT389          ;
    Erk                            := Erk_tot        -     Erk_pT202_Y204_obs;
    
    // kinetic parameters
    _kIRS1Phos                 = 0.1; 
    _kIRS1Dephos               = 0.1;     
    _kAktPhos_km               = 0.1;     
    _kAktPhos_kcat             = 0.1;     
    _kAktDephos                = 0.1; 
    _kTSC2Phos_km              = 0.1;     
    _kTSC2Phos_kcat            = 0.1;     
    _kTSC2Dephos               = 0.1;     
    _kPras40PhosByAkt_km       = 0.1;             
    _kPras40PhosByAkt_kcat     = 0.1;             
    //_kPras40PhosByTSC          = 0.1;         
    _kPras40Dephos             = 0.1;     
    _kFourEBP1Phos_km          = 0.1;         
    _kFourEBP1Phos_kcat        = 0.1;         
    _kFourEBP1Dephos           = 0.1;         
    _kS6KPhos_km               = 0.1;     
    _kS6KPhos_kcat             = 0.1;     
    _kS6KDephos                = 0.1; 
    _kErkPhos_km               = 0.1;  
    _kErkPhos_kcat             = 0.1;  
    _kErkDephos                = 0.1; 
    _kFeedbackIn               = 0.1;  
    kFeedbackOut               = 0.1;  
    
    // reactions // MMWithKcat(km, kcat, S, E)
    R1 : IRS1 => IRS1pS636_639 ;                Cell*   MMWithKcat(_kIRS1Phos_km, _kIRS1Phos_kcat, IRS1, Insulin);
    R2 : IRS1pS636_639 => IRS1 ;                Cell*   _kIRS1Dephos*IRS1pS636_639*S6KpT389;
    R3 : Akt => AktpT308 ;                      Cell*   MMWithKcat(_kAktPhos_km, _kAktPhos_kcat, Akt, IRS1pS636_639);
    R4 : AktpT308 => Akt ;                      Cell*   _kAktDephos*AktpT308;
    R5 : TSC2 => TSC2pT1462 ;                   Cell*   MMWithKcat(_kTSC2Phos_km, _kTSC2Phos_kcat, TSC2, AktpT308);
    R6 : TSC2pT1462 => TSC2 ;                   Cell*   _kTSC2Dephos*TSC2pT1462;
    R7 : PRAS40 => PRAS40pT246 ;                Cell*   MMWithKcat(_kPras40PhosByAkt_km, _kPras40PhosByAkt_kcat, PRAS40, AktpT308);
    R9 : PRAS40pT246 => PRAS40 ;                Cell*   _kPras40Dephos*TSC2pT1462;
    R10: FourEBP1 => FourE_BP1pT37_46 ;         Cell*   MMWithKcat(_kFourEBP1Phos_km, _kFourEBP1Phos_kcat, FourEBP1, TSC2);
    R11: FourE_BP1pT37_46 => FourEBP1 ;         Cell*   _kFourEBP1Dephos*FourE_BP1pT37_46;
    R12: S6K => S6KpT389 ;                      Cell*   MMWithKcat(_kS6KPhos_km, _kS6KPhos_kcat, S6K, TSC2);
    R13: S6KpT389 => S6K ;                      Cell*   _kS6KDephos*S6KpT389;
    R14: Erk => Erk_pT202_Y204 ;                Cell * MMWithKcat(_kErkPhos_km, _kErkPhos_kcat, Erk, Insulin);
    R15: Erk_pT202_Y204 => Erk ;                Cell * _kErkDephos * Erk_pT202_Y204 * Feedback;
    R16: => Feedback ;                          Cell * _kFeedbackIn * Erk_pT202_Y204;
    R17: Feedback => ;                          Cell * kFeedbackOut * Feedback;    

end


"""


def plot_best_fit(problem):
    """

    :param problem: string. Used for filename only
    :return:
    """
    data = viz.Parse(pe).data
    data['simple_akt_model'].to_csv(os.path.join(DATA_DIRECTORY, 'parameter_estimation_data.csv'))
    print(data['simple_akt_model'].iloc[0])
    mod.insert_parameters(df=data['simple_akt_model'], index=0, inplace=True)
    # simulate steady state condition
    mod.set('global_quantity', 'Insulin', 0.05, match_field='name', change_field='initial_value')
    ss_data = mod.simulate(0, 120, 1, variables='gm')
    # simulate insulin stimulated condition
    mod.set('global_quantity', 'Insulin', 1, match_field='name', change_field='initial_value')
    data = mod.simulate(0, 120, 1, variables='gm')
    exp = GetData(EXPERIMENTAL_DATA_FILE).get_data_normalised_to_coomassie_blue()
    exp = exp.stack()
    exp = exp.loc['MCF7']
    exp = exp.rename(columns={'4E_BP1': 'FourE_BP1',
                              '4E_BP1pT37_46': 'FourE_BP1pT37_46'})

    phospho_species_that_were_fitted = ['AktpT308_obs', 'FourE_BP1pT37_46_obs',
                                        'IRS1pS636_639_obs', 'PRAS40pT246_obs',
                                        'S6KpT389_obs', 'TSC2pT1462_obs']

    ss_sim = ss_data[sorted(['IRS1_tot', 'Akt_tot', 'TSC2_tot',
                             'PRAS40_tot', 'FourEBP1_tot', 'S6K_tot'])]

    ss_exp = exp[sorted(['FourE_BP1', 'Akt', 'IRS1',
                         'PRAS40', 'S6K', 'TSC2'])]

    # print(ss_sim.columns)
    # print(ss_exp.columns)

    ts_sim = data[sorted(phospho_species_that_were_fitted)]

    ts_exp = exp[sorted([i.replace('_obs', '') for i in phospho_species_that_were_fitted])]

    assert ss_sim.shape[1] == 6
    assert ss_exp.shape[1] == 6
    assert ts_sim.shape[1] == 6
    assert ts_exp.shape[1] == 6

    # print(list(ss_sim.columns))
    # print(list(ss_exp.columns))
    # print(list(ts_sim.columns))
    # print(list(ts_exp.columns))
    fig = plt.figure(figsize=(20, 10))
    for i in range(ss_sim.shape[1]):
        ax = plt.subplot(2, 3, i + 1)
        ss_sim_var = ss_sim.columns[i]
        ss_exp_var = ss_exp.columns[i]
        ts_sim_var = ts_sim.columns[i]
        ts_exp_var = ts_exp.columns[i]

        # print('ss_sim_var', ss_sim_var)
        # print('ss_exp_var', ss_exp_var)
        # print('ts_sim_var', ts_sim_var)
        # print('ts_exp_var', ts_exp_var)

        ss_sim_plt = ss_sim[ss_sim.columns[i]]
        # ss_exp_plt = ss_exp[ss_exp.columns[i]]
        ts_sim_plt = ts_sim[ts_sim.columns[i]]
        # ts_exp_plt = ts_exp[ts_exp.columns[i]]

        # steady state stuff
        total_color = 'green'
        phos_color = 'blue'
        seaborn.lineplot(x='time', y=ss_exp_var,
                         data=ss_exp.reset_index(), label='Total protein, exp',
                         ax=ax, legend=False, color=total_color,
                         markers=True)
        ax.lines[0].set_linestyle("--")
        ax.plot(ss_sim_plt.index, ss_sim_plt.values, label='Total protein, sim',
                linestyle='-', color=total_color,
                )

        # time series stuff
        seaborn.lineplot(x='time', y=ts_exp_var, data=ts_exp.reset_index(),
                         label='pProtein, exp', ax=ax, legend=False, color=phos_color,
                         markers=True
                         )
        ax.lines[2].set_linestyle("--")

        ax.plot(ts_sim_plt.index, ts_sim_plt.values, label='pProtein, sim',
                linestyle='-', color=phos_color)

        ax.axvline(75, linestyle=':', alpha=0.4, color='red', label='data stopped')

        plt.title(ss_exp_var)
        seaborn.despine(fig=fig, top=True, right=True)
        plt.xlabel('')
        plt.ylabel('')
    # plt.subplots_adjust(left=0.25, right=0.25, top=0.25, bottom=0.25)
    plt.subplots_adjust(wspace=0.25, hspace=0.25)
    plt.legend(loc=(1, 1.9))
    # plt.show()
    fname = os.path.join(SIMULATION_GRAPHS_DIR, '{}_simulations.png'.format(problem))
    fig.savefig(fname, dpi=300, bbox_inches='tight')
    print('figure saved to "{}"'.format(fname))


if __name__ == '__main__':

    # Build a new sbml model from scratch. When False, the existing model is worked on
    BUILD_NEW = True
    # indicates which problem we are on. Increment when you try something new
    #PROBLEM = 2 #45 minute interpolation
    PROBLEM = '3_60min_interp' # Using 60 minutes of interpolated data instead
    PROBLEM = '4_interp' # Using no truncation with interpolated data instead
    PROBLEM = '5_75min_interp' # Using no truncation with interpolated data instead
    PROBLEM = '5_75min_interp_wider_boundary' # Using no truncation with interpolated data instead

    # passed on to the run_mode in ParameterEstimation. Can be False, True, or 'slurm'
    FIT = '1'
    # FIT = 3 #current
    RUN = False
    # Open the sbml model in copasi
    OPEN = True
    # Parameter estimation copy number argument. Is automatically changed when RUN='slurm'
    COPY_NUMBER = 1
    # Open with copasi with best parameter set from PROBLEM
    OPEN_WITH_BEST_PARAMETERS = False
    # Run profile likelihoods
    RUN_PROFIE_LIKELIHOOD = False
    # plot the best fits in presentable format
    PLOT_BEST_FIT = False

    if BUILD_NEW:
        mod = model.loada(model_string, copasi_file=COPASI_FILE)
    else:
        mod = model.Model(COPASI_FILE)

    if RUN == 'slurm':
        COPY_NUMBER = 500

    if COPY_NUMBER == 0:
        raise ValueError

    with tasks.ParameterEstimation.Context(mod, [SS_DATA_FILE] + COPASI_INTERP_DATA_FILES,
                                           parameters='g') as context:
        context.set('separator', '\t')
        context.set('run_mode', RUN)
        context.set('problem', 'Problem{}'.format(PROBLEM))
        context.set('fit', '{}'.format(FIT))
        context.set('copy_number', COPY_NUMBER)
        context.set('randomize_start_values', True)
        context.set('method', 'particle_swarm')
        context.set('population_size', 200)
        context.set('swarm_size', 200)
        context.set('iteration_limit', 3000)
        context.set('lower_bound', 0.00001)
        context.set('upper_bound', 10000)
        context.set('weight_method', 'standard_deviation')
        context.set('prefix', '_')
        config = context.get_config()

        pe = tasks.ParameterEstimation(config)
        mod = pe.models['simple_akt_model'].model

    if RUN_PROFIE_LIKELIHOOD:
        with tasks.ParameterEstimation.Context(mod, [SS_DATA_FILE] + COPASI_INTERP_DATA_FILES,
                                               context='pl', parameters='g'
                                               ) as context:
            context.set('method', 'hooke_jeeves')
            context.set('pl_lower_bound', 1000)
            context.set('pl_upper_bound', 1000)
            context.set('pe_number', 10)
            context.set('run_mode', False)
            context.set('prefix', '_')
            context.set('weight_method', 'standard_deviation')

            context.set('separator', '\t')
            # context.set('method', 'particle_swarm')
            # context.set('swarm_size', 50)
            # context.set('iteration_limit', 2000)

            config = context.get_config()

            pl = tasks.ParameterEstimation(config)

    if OPEN:
        mod.open()

    if OPEN_WITH_BEST_PARAMETERS:
        data = viz.Parse(pe).data
        print(data['simple_akt_model'].iloc[0])
        mod.insert_parameters(df=data['simple_akt_model'], index=0, inplace=True)

        print(mod.open())

    if PLOT_BEST_FIT:
        plot_best_fit(PROBLEM)
