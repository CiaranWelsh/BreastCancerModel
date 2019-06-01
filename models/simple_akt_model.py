from pathlib import Path
import os, glob
import pandas, numpy
from collections import OrderedDict
import tellurium as te
import site
from sys import platform

site.addsitedir(r'D:\pycotools3')  # home computer
site.addsitedir(r'/home/ncw135/Documents/pycotools3')  # linux
site.addsitedir(r'/mnt/nfs/home/b3053674/pycotools3')  # cluster
from pycotools3 import model, tasks, viz

WORKING_DIRECTORY = Path(os.path.abspath(__file__)).parents[1]

# WORKING_DIRECTORY = r'D:\BreastCancerModel'
MODELS_DIRECTORY = os.path.join(WORKING_DIRECTORY, 'models')
DATA_DIRECTORY = os.path.join(WORKING_DIRECTORY, 'data')
SS_DATA_FILE = fname = os.path.join(DATA_DIRECTORY, 'ss_data.csv')

COPASI_FILE = os.path.join(MODELS_DIRECTORY, 'simple_akt_model.cps')
COPASI_FORMATTED_DATA = fname = os.path.join(DATA_DIRECTORY, 'copasi_formatted_data.csv')
COPASI_INTERP_DATA = fname = os.path.join(DATA_DIRECTORY, 'copasi_data_interp.csv')
COPASI_INTERP_DATA_FILES = glob.glob(COPASI_INTERP_DATA[:-4]+'*')
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
    compartment Cell = 1;
    var IRS1    in Cell;
    var IRS1pS636_639   in Cell;
    var Akt     in Cell;
    var AktpT308    in Cell;
    var TSC2    in Cell;
    var TSC2pT1462   in Cell;
    var PRAS40  in Cell;
    var PRAS40pS183 in Cell;
    var S6K in Cell;
    var S6KpT389 in Cell;
    var FourEBP1    in Cell;
    var FourE_BP1pT37_46   in Cell;    
    const Insulin in Cell;
    
    // global variables
    Insulin = 0.005;
    
    IRS1_tot                    := IRS1 + IRS1pS636_639;
    Akt_tot                     := Akt + AktpT308;
    TSC2_tot                    := TSC2 + TSC2pT1462;
    PRAS40_tot                  := PRAS40 + PRAS40pS183;
    FourEBP1_tot                := FourEBP1 + FourE_BP1pT37_46;
    S6K_tot                     := S6K + S6KpT389;    
    
    // IRS1_obs                    := IRS1_tot;       
    // Akt_obs                     := Akt_tot;   
    // TSC2_obs                    := TSC2_tot;       
    // PRAS40_obs                  := PRAS40_tot;       
    // S6K_obs                     := S6K_tot ;       
    
    IRS1pS636_639_obs           := IRS1pS636_639;          
    AktpT308_obs                := AktpT308;           
    TSC2pT1462_obs              := TSC2pT1462;              
    PRAS40pS183_obs             := PRAS40pS183;        
    S6KpT389_obs                := S6KpT389;
    FourE_BP1pT37_46_obs        := FourE_BP1pT37_46;           
       
    
    //initial conditions
    // may need to do the 'total math'
    IRS1                = 1.700789 ;
    IRS1pS636_639       = 0.861333;
    Akt                 = 1.241997 ;
    AktpT308            = 0.486243;
    TSC2                = 1.136033 ;
    TSC2pT1462          = 0.644957;
    PRAS40              = 0.981968 ;
    PRAS40pS183         = 0.516932;
    FourEBP1            = 0.458272 ;
    FourE_BP1pT37_46    = 0.488169;
    S6K                 = 1.330735;
    S6KpT389            = 0.395656;
    
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
    
    // reactions // MMWithKcat(km, kcat, S, E)
    R1 : IRS1 => IRS1pS636_639 ;                Cell*   MMWithKcat(_kIRS1Phos_km, _kIRS1Phos_kcat, IRS1, Insulin);
    R2 : IRS1pS636_639 => IRS1 ;                Cell*   _kIRS1Dephos*IRS1pS636_639*S6KpT389;
    R3 : Akt => AktpT308 ;                      Cell*   MMWithKcat(_kAktPhos_km, _kAktPhos_kcat, Akt, IRS1pS636_639);
    R4 : AktpT308 => Akt ;                      Cell*   _kAktDephos*AktpT308;
    R5 : TSC2 => TSC2pT1462 ;                   Cell*   MMWithKcat(_kTSC2Phos_km, _kTSC2Phos_kcat, TSC2, AktpT308);
    R6 : TSC2pT1462 => TSC2 ;                   Cell*   _kTSC2Dephos*TSC2pT1462;
    R7 : PRAS40 => PRAS40pS183 ;                Cell*   MMWithKcat(_kPras40PhosByAkt_km, _kPras40PhosByAkt_kcat, PRAS40, AktpT308);
    //R8 : PRAS40 => PRAS40pS183 ;                Cell*   _kPras40PhosByTSC*TSC2pT1462*PRAS40;
    R9 : PRAS40pS183 => PRAS40 ;                Cell*   _kPras40Dephos*TSC2pT1462;
    R10: FourEBP1 => FourE_BP1pT37_46 ;         Cell*   MMWithKcat(_kFourEBP1Phos_km, _kFourEBP1Phos_kcat, FourEBP1, TSC2);
    R11: FourE_BP1pT37_46 => FourEBP1 ;         Cell*   _kFourEBP1Dephos*FourE_BP1pT37_46;
    R12: S6K => S6KpT389 ;                      Cell*   MMWithKcat(_kS6KPhos_km, _kS6KPhos_kcat, S6K, TSC2);
    R13: S6KpT389 => S6K ;                      Cell*   _kS6KDephos*S6KpT389;

end


"""

if __name__ == '__main__':

    BUILD_NEW = True
    RUN_PARAMETER_ESTIMATION = True
    RUN = 'slurm'
    OPEN = True
    COPY_NUMBER = 1
    OPEN_WITH_BEST_PARAMETERS = False
    RUN_PROFIE_LIKELIHOOD = False

    if BUILD_NEW:
        mod = model.loada(model_string, copasi_file=COPASI_FILE)
    else:
        mod = model.Model(COPASI_FILE)

    if RUN == 'slurm':
        COPY_NUMBER = 200

    if COPY_NUMBER == 0:
        raise ValueError
    if RUN_PARAMETER_ESTIMATION:

        with tasks.ParameterEstimation.Context(mod, [SS_DATA_FILE]+COPASI_INTERP_DATA_FILES,
                                               parameters='g') as context:
            context.set('separator', '\t')
            context.set('run_mode', RUN)
            context.set('copy_number', COPY_NUMBER)
            context.set('randomize_start_values', True)
            context.set('method', 'particle_swarm')
            context.set('population_size', 200)
            context.set('iteration_limit', 3000)
            context.set('lower_bound', 0.001)
            context.set('upper_bound', 2500)
            context.set('weight_method', 'standard_deviation')
            context.set('prefix', '_')
            config = context.get_config()

        pe = tasks.ParameterEstimation(config)
        mod = pe.models['simple_akt_model'].model

    if RUN_PROFIE_LIKELIHOOD:
        with tasks.ParameterEstimation.Context(mod, [SS_DATA_FILE]+COPASI_INTERP_DATA_FILES,
                                         context='pl', parameters='gm'
        ) as context:
            context.set('method', 'hooke_jeeves')
            context.set('pl_lower_bound', 1000)
            context.set('pl_upper_bound', 1000)
            context.set('number_of_steps', 25)
            context.set('run_mode', True)
            config = context.get_config()

    if OPEN:
        mod.open()

    if OPEN_WITH_BEST_PARAMETERS:

        data = viz.Parse(pe).data
        print(data['simple_akt_model'].iloc[0])
        mod.insert_parameters(df=data['simple_akt_model'], index=0, inplace=True)

        print(mod.open())

