import os, glob
import tellurium as te
import pycotools3 as py3
import matplotlib
import matplotlib.pyplot as plt
from matplotlib.gridspec import GridSpec
import seaborn

matplotlib.use('Qt5Agg')


model_with_mtor = """

model ModelWithMTOR()
    compartment       Cell = 1;
    var Akt           in Cell;
    var pAkt          in Cell;
    var TSC2          in Cell;
    var pTSC2         in Cell;
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
    kS6KPhos            = 0.1;
    kS6KDephos          = 0.1;
    k4EBP1Phos          = 0.1;
    k4EBP1Dephos        = 0.1;
    
    Insulin = 0;  
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
    
    // with mTORC1
    R1f : Akt => pAkt               ; Cell * kAktPhos*Akt*Insulin
    R1b : pAkt => Akt               ; Cell * kAktDephos*pAkt
    R2f : TSC2 => pTSC2             ; Cell * kTSC2Phos*TSC2*pAkt
    R2b : pTSC2 => TSC2             ; Cell * kTSC2Dephos*pTSC2
    R3f : mTORC1 => pmTORC1         ; Cell * kmTORC1Phos*mTORC1
    R3b : pmTORC1 => mTORC1         ; Cell * kmTORC1Dephos*pmTORC1*TSC2
    R4f : S6K => pS6K               ; Cell * kS6KPhos*S6K*pmTORC1
    R4b : pS6K => S6K               ; Cell * kS6KDephos*pS6K
    R5f : FourEBP1 => pFourEBP1     ; Cell * k4EBP1Phos*FourEBP1*pmTORC1
    R5b : pFourEBP1 => FourEBP1     ; Cell * k4EBP1Dephos*pFourEBP1
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
    TSC2                = 0;
    pTSC2               = 10;
    S6K                 = 10;
    pS6K                = 0;
    FourEBP1            = 10;
    pFourEBP1           = 0;
    
    kAktPhos            = 0.1;
    kAktDephos          = 0.1;
    kTSC2Phos           = 0.1;
    kTSC2Dephos         = 0.1;
    kS6KPhos            = 0.1;
    kS6KDephos          = 0.1;
    k4EBP1Phos          = 0.1;
    k4EBP1Dephos        = 0.1;
    
    Insulin = 0;  
    
    // alexes suggestion
    R1f : Akt => pAkt               ; Cell * kAktPhos*Akt*Insulin
    R1b : pAkt => Akt               ; Cell * kAktDephos*pAkt
    R2f : TSC2 => pTSC2             ; Cell * kTSC2Phos*TSC2*pAkt
    R2b : pTSC2 => TSC2             ; Cell * kTSC2Dephos*pTSC2
    R4f : S6K => pS6K               ; Cell * kS6KPhos*S6K
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
    TSC2                = 0;
    pTSC2               = 10;
    S6K                 = 10;
    pS6K                = 0;
    FourEBP1            = 10;
    pFourEBP1           = 0;
    
    kAktPhos            = 0.1;
    kAktDephos          = 0.1;
    kTSC2Phos           = 0.1;
    kTSC2Dephos         = 0.1;
    kS6KPhos            = 0.1;
    kS6KDephos          = 0.1;
    k4EBP1Phos          = 0.1;
    k4EBP1Dephos        = 0.1;
    
    Insulin = 0;  
    // daryls suggestion
    R1f : Akt => pAkt               ; Cell * kAktPhos*Akt*Insulin
    R1b : pAkt => Akt               ; Cell * kAktDephos*pAkt
    R2f : TSC2 => pTSC2             ; Cell * kTSC2Phos*TSC2*pAkt
    R2b : pTSC2 => TSC2             ; Cell * kTSC2Dephos*pTSC2
    R4f : S6K => pS6K               ; Cell * kS6KPhos*S6K*pTSC2
    R4b : pS6K => S6K               ; Cell * kS6KDephos*pS6K
    R5f : FourEBP1 => pFourEBP1     ; Cell * k4EBP1Phos*FourEBP1*pTSC2
    R5b : pFourEBP1 => FourEBP1     ; Cell * k4EBP1Dephos*pFourEBP1
end
"""

# py3_model = py3.model.loada(model_with_mtor, os.path.abspath('model.cps'))
# py3_model.open()

def plot(ant_str, insulin=0, savefig=True, title='', prefix=''):

    seaborn.set_context(context='talk')

    mod = te.loada(ant_str)
    setattr(mod, 'Insulin', insulin)

    data = mod.simulate(0, 100, 101)
    fig = plt.figure(figsize=(12, 7))
    gs = GridSpec(2, 3, wspace=0.25, hspace=0.3)
    for i in range(1, data.shape[1]-1, 2):
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

plot(model_with_mtor, insulin=0, savefig=True, title='Insulin is set to 0 (constant)', prefix='logic_with_mtor')
plot(model_with_mtor, insulin=1, savefig=True, title='Insulin is set to 1 (constant)', prefix='logic_with_mtor')


plot(alexes_suggestion, insulin=0, savefig=True, title='Insulin is set to 0 (constant)', prefix='alexes_suggestion')
plot(alexes_suggestion, insulin=1, savefig=True, title='Insulin is set to 1 (constant)', prefix='alexes_suggestion')

plot(daryls_suggestion, insulin=0, savefig=True, title='Insulin is set to 0 (constant)', prefix='daryls_suggestion')
plot(daryls_suggestion, insulin=1, savefig=True, title='Insulin is set to 1 (constant)', prefix='daryls_suggestion')
















