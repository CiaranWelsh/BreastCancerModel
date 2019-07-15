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
    from data.data_analysis import *
except ImportError:
    # for cluster macihne
    from data_analysis import GetData
matplotlib.use('Qt5Agg')
seaborn.set_context('talk')

# WORKING_DIRECTORY = Path(os.path.abspath(__file__)).parents[1]

# WORKING_DIRECTORY = r'D:\BreastCancerModel'
# DATA_DIRECTORY = os.path.join(WORKING_DIRECTORY, 'data')
# EXPERIMENTAL_DATA_FILE = os.path.join(DATA_DIRECTORY, 'experimental_data.xlsx')
# SIMULATION_GRAPHS_DIR = os.path.join(DATA_DIRECTORY, 'simulation_graphs')
# if not os.path.isdir(SIMULATION_GRAPHS_DIR):
#     os.makedirs(SIMULATION_GRAPHS_DIR)
#

MODELS_DIRECTORY = os.path.join(WORKING_DIRECTORY, 'models')
SS_DATA_FILE = fname = os.path.join(DATA_DIRECTORY, 'ss_data.csv')
COPASI_FILE = os.path.join(MODELS_DIRECTORY, 'simple_akt_model.cps')
COPASI_FORMATTED_DATA = fname = os.path.join(DATA_DIRECTORY, 'copasi_formatted_data.csv')
COPASI_INTERP_DATA = fname = os.path.join(DATA_DIRECTORY, 'copasi_data_interp.csv')


model_string = f"""

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
    var S6KpT229           in Cell;
    var FourEBP1            in Cell;
    var FourEBP1pT37_46     in Cell;    
    var PI3K                in Cell;
    var _pPI3K               in Cell;
    const Insulin           in Cell;
    
    // global variables
    Insulin = 1;
    
    // Offset is added onto total proteins in order to prevent phospho being present in 
    //  greater quantity than total
    offset_amount                  = {OFFSET_PARAMETER}
    
    FourEBP1_tot                  := 1.593687 + offset_amount;
    Akt_tot                       := 0.736138 + offset_amount;
    IRS1_tot                      := 0.458843 + offset_amount;
    TSC2_tot                      := 0.816176 + offset_amount;
    PRAS40_tot                    := 0.954775 + offset_amount;
    S6K_tot                       := 0.487419 + offset_amount;
    PI3K_tot                      := 1          + offset_amount;

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
    S6KpS229_obs                 := S6KpT229;
    FourEBP1pT37_46_obs           := FourEBP1pT37_46;           
    
    //initial conditions
    FourEBP1pT37_46    = 0.644677;
    AktpT308           = 0.585251;
    IRS1pS636_639      = 0.458843;
    PRAS40pT246        = 0.537742;
    S6KpT229           = 0.241475;
    S6KpT389           = 0.177316;
    TSC2pT1462         = 0.654499;
    _pPI3K             = 0.1;

    
    IRS1               := IRS1_tot       -     IRS1pS636_639             ;
    Akt                := Akt_tot        -     AktpT308                  ;
    TSC2               := TSC2_tot       -     TSC2pT1462                ;
    PRAS40             := PRAS40_tot     -     PRAS40pT246               ;
    FourEBP1           := FourEBP1_tot   -     FourEBP1pT37_46           ;
    S6K                := S6K_tot        -     S6KpT389   - S6KpT229    ;
    PI3K               := PI3K_tot       -     _pPI3K                    ; 
    
    // kinetic parameters
    _kIRS1Phos_km             = 0.1;      
    _kIRS1Phos_kcat           = 0.1;      
    _kIRS1Dephos_km           = 0.1;      
    _kIRS1Dephos_kcat         = 0.1;          
    _kPI3KPhos_km             = 0.1;      
    _kPI3KPhos_kcat           = 0.1;      
    _kPI3KDephos              = 0.1;      
    _kS6KPhosS229_km         = 0.1;          
    _kS6KPhosS229_kcat       = 0.1;          
    _kS6KDephosS229          = 0.1;          
    _kAktPhos_km              = 0.1;      
    _kAktPhos_kcat            = 0.1;      
    _kAktDephos               = 0.1;  
    _kTSC2Phos_km             = 0.1;      
    _kTSC2Phos_kcat           = 0.1;      
    _kTSC2Dephos              = 0.1;      
    _kPras40PhosByAkt_km      = 0.1;              
    _kPras40PhosByAkt_kcat    = 0.1;              
    _kPras40Dephos            = 0.1;      
    _kFourEBP1Phos_km         = 0.1;          
    _kFourEBP1Phos_kcat       = 0.1;          
    _kFourEBP1Dephos          = 0.1;          
    _kS6KT389Phos_km          = 0.1;          
    _kS6KT389Phos_kcat        = 0.1;          
    _kS6KDephos               = 0.1;  
    
    //// old parameters
    // _kFourEBP1Dephos           = 0.04760716822;             
    // _kS6KDephos                = 0.02513594021;     
    // _kPras40Dephos             = 0.1001194064;
    // _kFourEBP1Phos_km          = 82.73582413;             
    // _kS6KT389Phos_km           = 9711.278764;         
    // _kPras40PhosByAkt_km       = 2684.754046;
    // _kS6KT389Phos_kcat         = 350.115286;         
    // _kFourEBP1Phos_kcat        = 4.768585613;             
    // _kPras40PhosByAkt_kcat     = 286.5647513;
    // _kAktDephos               = 403.46200;     
    // _kAktPhos_km              = 23.32000;
    // _kAktPhos_kcat            = 4887.04000;
    // _kIRS1Phos_km              = 4469.348507;
    // _kIRS1Dephos_km            = 1732.050115;
    // _kIRS1Dephos_kcat          = 31.97748246;
    // _kIRS1Phos_kcat            = 91.25250293;
    // _kTSC2Phos_kcat            = 1285.13000;
    // _kTSC2Phos_km              = 9527.75000;
    // _kTSC2Dephos_vmax          = 1136.83000
    // _kTSC2Dephos_km            = 7776.66000;
    
        
    // reactions // MMWithKcat(km, kcat, S, E)
    // function CompetitiveInhibitionWithKcat(km, ki, kcat, E, I, S)
    // function MM(km, Vmax, S)
    // function NonCompetitiveInhibitionWithKcat(km, ki, kcat, E, n, I, S)
    R1f : IRS1 => IRS1pS636_639 ;      Cell*   MMWithKcat(_kIRS1Phos_km, _kIRS1Phos_kcat, IRS1, S6KpT389);
    R1b : IRS1pS636_639 => IRS1 ;      Cell*   MMWithKcat(_kIRS1Dephos_km, _kIRS1Dephos_kcat, IRS1pS636_639, Insulin );
    R2f : PI3K => _pPI3K         ;     Cell*   MMWithKcat(_kPI3KPhos_km, _kPI3KPhos_kcat, PI3K, IRS1);
    R2b : _pPI3K => PI3K         ;     Cell*   _kPI3KDephos*_pPI3K;
    R3f : S6K => S6KpT229      ;      Cell*   MMWithKcat(_kS6KPhosS229_km, _kS6KPhosS229_kcat, S6K, _pPI3K); 
    R3b : S6KpT229 => S6K      ;      Cell*   _kS6KDephosS229*S6KpT229; 
    R4f : Akt => AktpT308 ;            Cell*   MMWithKcat(_kAktPhos_km, _kAktPhos_kcat, Akt, _pPI3K);
    R4b : AktpT308 => Akt ;            Cell*   _kAktDephos*AktpT308;
    R5f : TSC2 => TSC2pT1462 ;         Cell*   MMWithKcat(_kTSC2Phos_km, _kTSC2Phos_kcat, TSC2, AktpT308);
    R5b: TSC2pT1462 => TSC2 ;          Cell*   _kTSC2Dephos*TSC2pT1462;
    R6f: PRAS40 => PRAS40pT246 ;       Cell*   MMWithKcat(_kPras40PhosByAkt_km, _kPras40PhosByAkt_kcat, PRAS40, AktpT308);
    R6b: PRAS40pT246 => PRAS40 ;       Cell*   _kPras40Dephos*PRAS40pT246;
    R7f: FourEBP1 => FourEBP1pT37_46 ; Cell*   MMWithKcat(_kFourEBP1Phos_km, _kFourEBP1Phos_kcat, FourEBP1, TSC2);
    R7b: FourEBP1pT37_46 => FourEBP1 ; Cell*   _kFourEBP1Dephos*FourEBP1pT37_46;
    R8f: S6K => S6KpT389 ;             Cell*   MMWithKcat(_kS6KT389Phos_km, _kS6KT389Phos_kcat, S6K, TSC2);
    R8b: S6KpT389 => S6K ;             Cell*   _kS6KDephos*S6KpT389;
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
    exp = GetDataFromOldDataFile(EXPERIMENTAL_DATA_FILE).get_data_normalised_to_coomassie_blue(
        offset_for_total_proetins=1)
    exp = exp.stack()
    exp = exp.loc['MCF7']
    exp = exp.rename(columns={'4E_BP1': 'FourE_BP1',
                              '4E_BP1pT37_46': 'FourEBP1pT37_46',
                              'ERK': 'Erk',
                              'ERK_pT202_Y204': 'Erk_pT202_Y204',
                              })

    phospho_species_that_were_fitted = ['AktpT308_obs', 'FourEBP1pT37_46_obs',
                                        'IRS1pS636_639_obs', 'PRAS40pT246_obs',
                                        'S6KpT389_obs', 'TSC2pT1462_obs',
                                        'Erk_pT202_Y204']

    ss_sim = ss_data[sorted(['IRS1_tot', 'Akt_tot', 'TSC2_tot',
                             'PRAS40_tot', 'FourEBP1_tot', 'S6K_tot',
                             'Erk_tot'])]

    print(exp.columns)
    ss_exp = exp[sorted(['FourE_BP1', 'Akt', 'IRS1',
                         'PRAS40', 'S6K', 'TSC2', 'Erk'])]

    # print(ss_sim.columns)
    # print(ss_exp.columns)

    ts_sim = data[sorted(phospho_species_that_were_fitted)]

    ts_exp = exp[sorted([i.replace('_obs', '') for i in phospho_species_that_were_fitted])]

    assert ss_sim.shape[1] == 7, ss_sim.shape[1]
    assert ss_exp.shape[1] == 7, ss_exp.shape[1]
    assert ts_sim.shape[1] == 7, ts_sim.shape[1]
    assert ts_exp.shape[1] == 7, ts_exp.shape[1]

    fig = plt.figure(figsize=(20, 10))
    for i in range(ss_sim.shape[1]):
        ax = plt.subplot(3, 3, i + 1)
        ss_sim_var = ss_sim.columns[i]
        ss_exp_var = ss_exp.columns[i]
        ts_sim_var = ts_sim.columns[i]
        ts_exp_var = ts_exp.columns[i]

        ss_sim_plt = ss_sim[ss_sim.columns[i]]
        # ss_exp_plt = ss_exp[ss_exp.columns[i]]
        ts_sim_plt = ts_sim[ts_sim.columns[i]]
        # ts_exp_plt = ts_exp[ts_exp.columns[i]]

        # steady state stuff
        total_color = 'green'
        phos_color = 'blue'
        seaborn.lineplot(x='time', y=ss_exp_var,
                         data=ss_exp.reset_index(), label='Total protein, experimental',
                         ax=ax, legend=False, color=total_color,
                         markers=True)
        ax.lines[0].set_linestyle("--")
        ax.plot(ss_sim_plt.index, ss_sim_plt.values, label='Total protein, simulated',
                linestyle='-', color=total_color,
                )

        # time series stuff
        seaborn.lineplot(x='time', y=ts_exp_var, data=ts_exp.reset_index(),
                         label='pProtein, experimental', ax=ax, legend=False, color=phos_color,
                         markers=True
                         )
        ax.lines[2].set_linestyle("--")

        ax.plot(ts_sim_plt.index, ts_sim_plt.values, label='pProtein, simulated',
                linestyle='-', color=phos_color)

        plt.title(ss_exp_var)
        seaborn.despine(fig=fig, top=True, right=True)
        plt.xlabel('')
        plt.ylabel('')
    # plt.subplots_adjust(left=0.25, right=0.25, top=0.25, bottom=0.25)
    plt.subplots_adjust(wspace=0.1, hspace=0.4)
    plt.legend(loc=(1.35, 0.1))
    # plt.show()
    fname = os.path.join(SIMULATION_GRAPHS_DIR, '{}_simulations.png'.format(problem))
    fig.savefig(fname, dpi=300, bbox_inches='tight')
    print('figure saved to "{}"'.format(fname))


def plotpl():
    '/home/ncw135/Documents/MesiSTRAT2/BreastCancerModel/models/ProfileLikelihoods/Fit1/_kAktPhos_kcat/ParameterEstimationData'
    print(WORKING_DIRECTORY)
    pl_dir = os.path.join(MODELS_DIRECTORY, 'ProfileLikelihoods')
    assert os.path.isdir(pl_dir)
    files = glob.glob(os.path.join(pl_dir, '*/*/*/*.txt'))
    names = [os.path.split(os.path.dirname(os.path.dirname(i)))[1] for i in files]
    data_files = dict(zip(names, files))

    def read1(f):
        with open(f) as fle:
            data = fle.read()
        data = data.replace('(', '').replace(')', '')
        data = data.split('\n')[1:]
        from functools import reduce
        data = '\n'.join(data)
        from io import StringIO
        df = pandas.read_csv(StringIO(data), sep='\t', header=None)
        rss = df.iloc[:, -1]
        return rss

    rss = {k: read1(v) for k, v in data_files.items()}
    for k, v in rss.items():
        plt.figure()
        plt.plot(v)
        plt.title(k)
    plt.show()


def insert_parameters_from_dct_into_antimony(dct, model_string):
    import re
    for k, v in dct.items():
        p = '^    ' + k + ' .*'
        model_string = re.sub(p, '    ' + k + '\t\t=' + str(v) + ';', model_string, flags=re.MULTILINE)
    return model_string


def simulation_with_t47d_ics(mod, t47d_data, problem):
    # mod = te.loada(model_string)
    # dct = {'FourEBP1': 3.2466649329564135, 'FourEBP1pT37_46': 0.7124890900275289, 'Akt': 2.8086251256904022, 'AktpT308': 0.7665804071985246, 'Erk_pT202_Y204': 0.39184126883631254, 'IRS1': 2.1221090610329165, 'IRS1pS636_639': 0.4200918742913655, 'PRAS40': 3.0166401225784516, 'PRAS40pT246': 1.1005998527632517, 'S6K': 2.394884041398308, 'S6KpT389': 0.5414110988836646, 'TSC2': 2.9584411371727395, 'TSC2pT1462': 1.1184222827344148}
    replacement_names = {
        'FourEBP1_obs': 'FourEBP1_tot',
        'FourEBP1pT37_46_obs': 'FourEBP1pT37_46',
        'Akt_obs': 'Akt_tot',
        'AktpS473_obs': 'AktpS473',
        'AktpT308_obs': 'AktpT308',
        'ERK_obs': 'Erk_tot',
        'ErkpT202_Y204': 'Erk_pT202_Y204',
        'IRS1_obs': 'IRS1_tot',
        'IRS1pS636_639_obs': 'IRS1pS636_639',
        'PRAS40_obs': 'PRAS40_tot',
        'PRAS40pS183_obs': 'PRAS40pS183',
        'PRAS40pT246_obs': 'PRAS40pT246',
        'S6K_obs': 'S6K_tot',
        'S6KpT229_obs': 'S6KpT229',
        'S6KpT389_obs': 'S6KpT389',
        'TSC2_obs': 'TSC2_tot',
        'TSC2pT1462_obs': 'TSC2pT1462',
        'p38_obs': 'p38_tot',
        'p38_pT180_Y182_obs': 'p38_pT180_Y182',
    }
    for label, df in t47d_data.groupby(level='repeats'):
        df = df.reset_index()
        # df['antibody'] = [i.replace('_obs', '') for i in df['antibody']]
        df = df.drop('repeats', axis=1)
        df = df.set_index('antibody')
        df = df.transpose().iloc[0]
        df = df.rename(replacement_names)
        dct = df.to_dict()
        dct = {k: v for k, v in dct.items() if k in mod}
        mod.insert_parameters(parameter_dict=dct)
        # mod.set('global_quantity', 'Insulin', 0.05, match_field='name', change_field='initial_value')
        # ss_data = mod.simulate(0, 120, 1, variables='gm')
        # simulate insulin stimulated condition
        mod.set('global_quantity', 'Insulin', 1, match_field='name', change_field='initial_value')
        mod.set('global_quantity', 'offset_amount', 1, match_field='name', change_field='initial_value')
        data = mod.simulate(0, 120, 2, variables='gm')
        exp = GetDataFromOldDataFile(EXPERIMENTAL_DATA_FILE).get_data_normalised_to_coomassie_blue(
            offset_for_total_proetins=2)
        exp = exp.stack()
        exp = exp.loc['T47D']
        exp = exp.rename(columns={'4E_BP1': 'FourE_BP1',
                                  '4E_BP1pT37_46': 'FourEBP1pT37_46',
                                  'ERK': 'Erk',
                                  'ERK_pT202_Y204': 'Erk_pT202_Y204',
                                  })

        phospho_species_that_were_fitted = ['AktpT308_obs', 'FourEBP1pT37_46_obs',
                                            'IRS1pS636_639_obs', 'PRAS40pT246_obs',
                                            'S6KpT389_obs', 'TSC2pT1462_obs',
                                            'Erk_pT202_Y204']

        ss_sim = data[sorted(['IRS1_tot', 'Akt_tot', 'TSC2_tot',
                              'PRAS40_tot', 'FourEBP1_tot', 'S6K_tot',
                              'Erk_tot'])]

        ss_exp = exp[sorted(['FourE_BP1', 'Akt', 'IRS1',
                             'PRAS40', 'S6K', 'TSC2', 'Erk'])]

        ts_sim = data[sorted(phospho_species_that_were_fitted)]

        ts_exp = exp[sorted([i.replace('_obs', '') for i in phospho_species_that_were_fitted])]

        assert ss_sim.shape[1] == 7, ss_sim.shape[1]
        assert ss_exp.shape[1] == 7, ss_exp.shape[1]
        assert ts_sim.shape[1] == 7, ts_sim.shape[1]
        assert ts_exp.shape[1] == 7, ts_exp.shape[1]

        fig = plt.figure(figsize=(20, 10))
        for i in range(ss_sim.shape[1]):
            ax = plt.subplot(3, 3, i + 1)
            ss_sim_var = ss_sim.columns[i]
            ss_exp_var = ss_exp.columns[i]
            ts_sim_var = ts_sim.columns[i]
            ts_exp_var = ts_exp.columns[i]

            ss_sim_plt = ss_sim[ss_sim.columns[i]]
            ts_sim_plt = ts_sim[ts_sim.columns[i]]

            # steady state stuff
            total_color = 'green'
            phos_color = 'blue'
            # seaborn.lineplot(x='time', y=ss_exp_var,
            #                  data=ss_exp.reset_index(), label='Total protein, experimental',
            #                  ax=ax, legend=False, color=total_color,
            #                  markers=True)
            # ax.lines[0].set_linestyle("--")
            # ax.plot(ss_sim_plt.index, ss_sim_plt.values, label='Total protein, simulated',
            #         linestyle='-', color=total_color,
            #         )

            # time series stuff
            seaborn.lineplot(x='time', y=ts_exp_var, data=ts_exp.reset_index(),
                             label='pProtein, experimental', ax=ax, legend=False, color=phos_color,
                             markers=True
                             )
            ax.lines[0].set_linestyle("--")

            ax.plot(ts_sim_plt.index, ts_sim_plt.values, label='pProtein, simulated',
                    linestyle='-', color=phos_color)

            plt.title(ss_exp_var)
            seaborn.despine(fig=fig, top=True, right=True)
            plt.xlabel('')
            plt.ylabel('')
        # plt.subplots_adjust(left=0.25, right=0.25, top=0.25, bottom=0.25)
        plt.subplots_adjust(wspace=0.1, hspace=0.4)
        plt.legend(loc=(1.35, 0.1))
        # plt.show()
        fname = os.path.join(SIMULATION_GRAPHS_DIR, '{}_{}_simulations.png'.format(problem, label))
        fig.savefig(fname, dpi=300, bbox_inches='tight')
        print('figure saved to "{}"'.format(fname))


if __name__ == '__main__':

    # Build a new sbml model from scratch. When False, the existing model is worked on
    BUILD_NEW = True
    # indicates which problem we are on. Increment when you try something new
    # PROBLEM = 2 #45 minute interpolation
    PROBLEM = '3_60min_interp'  # Using 60 minutes of interpolated data instead
    PROBLEM = '4_interp'  # Using no truncation with interpolated data instead
    PROBLEM = '5_75min_interp'
    PROBLEM = '5_75min_interp_wider_boundary'
    PROBLEM = '6_75min_interp_wider_boundary'
    PROBLEM = '7_manual'

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

    PLOT_PL = False

    # set to True to run a simulation from different initial conditions
    RUN_SIMULATION_FROM_DIFFERENT_INITIAL_CONDITIONS = False

    ###########################################

    if PLOT_PL:
        plotpl()

    if BUILD_NEW:
        mod = model.loada(model_string, copasi_file=COPASI_FILE)
    else:
        mod = model.Model(COPASI_FILE)

    if RUN == 'slurm':
        COPY_NUMBER = 500
    elif RUN == True:
        COPY_NUMBER = 1
    elif RUN == 'parallel':
        COPY_NUMBER = 6

    if COPY_NUMBER == 0:
        raise ValueError

    with tasks.ParameterEstimation.Context(mod, COPASI_DATA_FILES, parameters='g') as context:
        context.set('separator', ',')
        context.set('run_mode', RUN)
        context.set('problem', 'Problem{}'.format(PROBLEM))
        context.set('fit', '{}'.format(FIT))
        context.set('copy_number', COPY_NUMBER)
        context.set('randomize_start_values', False)
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
            context.set('run_mode', True)
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

    if RUN_SIMULATION_FROM_DIFFERENT_INITIAL_CONDITIONS:
        t47d_data = GetDataFromOldDataFile(EXPERIMENTAL_DATA_FILE).get_ics_for_t47d(offset_for_total_proetins=1)
        # print(simulation_with_t47d_ics(model_string, t47d_data))
        print(simulation_with_t47d_ics(mod, t47d_data, 't47d'))
