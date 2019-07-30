functions = """

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

"""

pi3k_system = f"""

{functions}

model ModelWithMTOR()
    compartment       Cell = 1;
    var IRS1          in Cell;
    var IRS1a        in Cell;
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
    kmTORC1Act          = 0.001;
    kmTORC1Dephos       = 1;
    kmTORC1BindRapa     = 2.0;
    kmTORC1UnbindRapa   = 0.1;
    kS6KPhos_km         = 100;
    kS6KPhos_kcat       = 2;
    kS6KDephos          = 0.1;
    k4Phos_km           = 5;
    k4EBP1Phos_kcat     = 5;
    k4EBP1Dephos        = 0.1;
    kRhebLoad           = 0.1;
    kRhebUnload         = 5;
    kRhebIn             = 10; 
    kRhebOut            = 0.1; 
    kmTORC1BindPras40   = 0.1;
    kPras40Dephos       = 0.1;

    Rapamycin           = 0;
    Insulin             = 0;
    AA                  = 1;
    IRS1 = 10.000001549282924;
    IRS1a = 0                                                  
    pIRS1 = 0                                                   
    Akt = 10.005001550057566;
    pAkt = 0                                                    
    TSC2 = 10.005001550057566;
    pTSC2 = 0.0;
    RhebGDP = 90.91323534809237;
    RhebGTP = 9.086780144736869;
    Pras40 = 8.659321556325276e-09;
    mTORC1_Pras40_Lys = 5.012500772248403;
    mTORC1_Pras40_Cyt = 5.012500772248403;
    pmTORC1 = 0                                                 
    mTORC1_i = 0                                                
    mTORC1_ii = 0                                               
    mTORC1_iii = 0                                              
    S6K = 10.005001534306187;
    pS6K = 0                           
    FourEBP1 = 10                           
    pFourEBP1 = 0                         
    ppPras40 =   0                        
    Rapamycin = 0.0;

    // observables
    // MM(km, Vmax, S)
    // MMWithKcat(km, kcat, S, E)
    // Hill(km, kcat, L, S, h) or Hill(km, kcat, E, S, h)
    R1In    : => IRS1                                               ; Cell * kIRS1In;
    R2Out   : IRS1 =>                                               ; Cell * kIRS1Out*IRS1;
    R1f     : IRS1 => IRS1a                                        ; Cell * kIRS1Act*IRS1*Insulin;//Hill(kIRS1Act_km, kIRS1Act_kcat, Insulin, IRS1, kIRS1Act_h);
    R1b     : IRS1a => IRS1                                        ; Cell * kIRS1Inact*IRS1a;
    R1i     : IRS1a => pIRS1                                       ; Cell * kIRS1Phos*IRS1a*pS6K;
    R1o     : pIRS1 =>                                              ; Cell * kIRS1Dephos*pIRS1;
    R2f     : Akt => pAkt                                           ; Cell * kAktPhos*Akt*IRS1a;
    R2b     : pAkt => Akt                                           ; Cell * kAktDephos*pAkt;
    R3f     : TSC2 => pTSC2                                         ; Cell * kTSC2Phos*TSC2*pAkt;
    R3b     : pTSC2 => TSC2                                         ; Cell * kTSC2Dephos*pTSC2;

    R4Out   : RhebGDP =>                                            ; Cell * kRhebOut*RhebGDP;
    R4In    : => RhebGTP                                            ; Cell * kRhebIn;
    R4Out2  : RhebGTP =>                                            ; Cell * kRhebOut*RhebGTP; 

    R4f     : RhebGDP => RhebGTP                                    ; Cell * kRhebLoad*RhebGDP*AA;
    R4b     : RhebGTP => RhebGDP                                    ; Cell * kRhebUnload*RhebGTP*TSC2;
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




expanded_pi3k_model = f"""

{functions}


model ComplexPI3KModel
    compartment Cell=1;
    var IRS1 in Cell;
    var IRS1a in Cell;
    var pIRS1 in Cell;
    var PI3K in Cell;
    var pPI3K in Cell;
    var PIP2 in Cell;
    var PIP3 in Cell;
    var PDK1 in Cell;
    var PDK1_PIP3 in Cell;
    var PDK1_PIP3 in Cell;
    var Akt in Cell;
    var Akt_PIP3 in Cell;
    var pAkt in Cell;
    var Akti in Cell;
    var TSC2 in Cell;
    var pTSC2 in Cell;
    var RhebGDP in Cell;
    var RhebGTP in Cell;
    var ppPras40 in Cell;
    var mTORC1cyt in Cell;
    var mTORC1_Pras40cyt in Cell;
    var mTORC1cyt in Cell;
    var mTORC1lys in Cell;
    var RAG_GDP in Cell;
    var RAG_GTP in Cell;
    var mTORC1i in Cell;
    var mTORC1ii in Cell;
    var mTORC1iii in Cell;
    var mTORC1iv in Cell;
    var FourEBP1 in Cell;
    var pFourEBP1 in Cell;
    var S6K in Cell;
    var pS6K in Cell;
    var AMPK in Cell;
    var pAMPKi in Cell;
    var pAMPK in Cell;
    var CaMKK2a in Cell;
    var CaMKK2 in Cell;
    var LKB1a in Cell;
    var LKB1 in Cell;
    var RTK in Cell;
    var pRTK in Cell;
    var Sos in Cell;
    var pRTKa in Cell;
    var Raf in Cell;
    var pRaf in Cell;
    var Mek in Cell;
    var pMek in Cell;
    var Erk in Cell;
    var pErk in Cell;
    var Meki in Cell;
    var PLCeps in Cell;
    var pPLCeps in Cell;
    var IP3 in Cell;
    var DAG in Cell;
    var IpR in Cell;
    var IpRa in Cell;
    var Ca2 in Cell;
    const Insulin;
    const AA;
    const Rapamycin;
    const MK2206;
    const AZD;
    const EGF;


    kIRS1In                 = 1;                
    kIRS1Out                = 0.1;                    
    kIRS1Act                = 0.1;                    
    kIRS1Inact              = 0.1;                    
    kIRS1Phos               = 0.1;                    
    kIRS1Dephos             = 0.1;                    
    kPI3KPhos               = 0.1;                    
    kPI3KDephos             = 0.1;                    
    kPIPPhos                = 0.1;                    
    kPIPDephos              = 0.1;                    
    kPDK1BindPIP3           = 0.1;                        
    kPDK1UnbindPIP3         = 0.1;                        
    kAktBindPIP3            = 0.1;                        
    kAktUnbindPIP3          = 0.1;                        
    kAktPhos                = 0.1;                    
    kAktDephos              = 0.1;                    
    kAktBindMK              = 0.1;                    
    kTSC2Phos               = 0.1;                    
    kTSC2Dephos             = 0.1;                    
    kRhebPhos               = 0.1;                    
    kRhebDephos             = 0.1;                    
    kmTORC1BindPras40       = 0.1;                            
    kmTORC1UnbindPras40     = 0.1;                            
    kmTORC1CytToLys         = 0.1;                        
    kmTORC1LysToCyt         = 0.1;                        
    kRAGPhos                = 0.1;                    
    kRAGDephos              = 0.1;                    
    kmTORC1Phos             = 0.1;                    
    kmTORC1Dephos           = 0.1;                        
    kmTORC1BindRapa         = 0.1;                        
    kmTORC1UnbindRapa       = 0.1;                            
    kmTORC1BindRapa         = 0.1;                        
    kmTORC1UnbindRapa       = 0.1;                            
    kmTORC1BindRapa         = 0.1;                        
    kmTORC1UnbindRapa       = 0.1;                            
    kmTORC1BindRapa         = 0.1;                        
    kmTORC1UnbindRapa       = 0.1;                            
    k4EBP1Phos              = 0.1;                    
    k4EBP1Dephos            = 0.1;                        
    kS6KPhos                = 0.1;                    
    kS6KDehos               = 0.1;                    
    kAMPKInhibPhosByAkt     = 0.1;                            
    kAMPKInhibPhosByS6K     = 0.1;                            
    kAMPKDephos             = 0.1;                    
    kAMPKActPhos            = 0.1;                        
    kAMPKActDephos          = 0.1;                        
    kCaMKK2Act              = 0.1;                    
    kCaMKK2Inact            = 0.1;                        
    kLKB1Act                = 0.1;                    
    kLKB1Inact              = 0.1;                    
    kTKRBindEGF             = 0.1;                    
    kTKRUnbindEGF           = 0.1;                        
    kTKRBindSOS             = 0.1;                    
    kTKRUnbindSOS           = 0.1;                        
    kSOSPhos                = 0.1;                    
    kSOSDephos              = 0.1;                    
    kRasLoad                = 0.1;                    
    kRasUnload              = 0.1;                    
    kRafPhos                = 0.1;                    
    kRafDephos              = 0.1;                    
    kMekPhos                = 0.1;                    
    kMekDephos              = 0.1;                    
    kErkPhos                = 0.01;                    
    kErkDephos              = 0.1;                    
    kMekBindAzd             = 0.1;                    
    kMekUnbindAzd           = 0.1;                        
    kPLCPhos                = 0.1;                    
    kPLCDephos              = 0.1;                    
    kPIP2Break              = 0.001;                    
    kPIP2form               = 0.1;                    
    kIP3BindIpR             = 0.1;                    
    kIP3UnbindIpR           = 0.1;                        
    kCa2In                  = 0.1;                
    kCa2Out                 = 0.1;                
    
    Insulin                 = 0;        
    AA                      = 0;    
    Rapamycin               = 0;            
    MK2206                  = 0;        
    AZD                     = 0;    
    EGF                     = 0;    
    
    IRS1                    = 10.001;                        
    IRS1a                   = 0.001;                        
    pIRS1                   = 0.001;                        
    PI3K                    = 10.001;                        
    pPI3K                   = 0.001;                        
    PIP2                    = 10.001;                        
    PIP3                    = 0.001;                        
    PDK1                    = 10.001;                        
    PDK1_PIP3               = 0.001;                            
    PDK1_PIP3               = 0.001;                            
    Akt                     = 10.001;                    
    Akt_PIP3                = 0.001;                            
    pAkt                    = 0.001;                        
    Akti                    = 0;                        
    TSC2                    = 10.001;                        
    pTSC2                   = 0.001;                        
    RhebGDP                 = 10.002;                        
    RhebGTP                 = 0.00;    
    RasGDP                  = 10.002;
    RasGTP                  = 0;                  
    ppPras40                = 0;                            
    mTORC1cyt               = 0.001;                            
    mTORC1_Pras40cyt        = 10.001;                                    
    mTORC1cyt               = 0.002;                            
    mTORC1lys               = 0.001;                            
    RAG_GDP                 = 10.001;                        
    RAG_GTP                 = 0.001;                        
    mTORC1i                 = 0;                        
    mTORC1ii                = 0;                            
    mTORC1iii               = 0;                            
    mTORC1iv                = 0;    
    pmTORC1                 = 0.001;                        
    FourEBP1                = 10.001;                            
    pFourEBP1               = 0.001;                            
    S6K                     = 10.001;                    
    pS6K                    = 0.001;                        
    AMPK                    = 10.001;                        
    pAMPKi                  = 0;                        
    pAMPK                   = 0.001;                        
    CaMKK2a                 = 0;                        
    CaMKK2                  = 10.001;                        
    LKB1a                   = 0.001;                        
    LKB1                    = 10.001;                        
    RTK                     = 10.001;                    
    pRTK                    = 0;                        
    pRTKa                   = 0;                        
    Sos                     = 10.001;                    
    pSos                    = 0.001;                    
    Raf                     = 10.001;                    
    pRaf                    = 0.001;                        
    Mek                     = 10.001;                    
    pMek                    = 0.001;                        
    Erk                     = 10.001;                    
    pErk                    = 0.001;                        
    Meki                    = 0;                        
    PLCeps                  = 10.001;                        
    pPLCeps                 = 0.001;                        
    IP3                     = 0.001;                    
    DAG                     = 0.001;                    
    IpR                     = 10.001;                    
    IpRa                    = 0.0009;                        
    Ca2                     = 0.0009;                    
    
    R1In    : => IRS1                                   ; Cell * kIRS1In;
    R2Out   : IRS1 =>                                   ; Cell * kIRS1Out*IRS1;
    R1f     : IRS1 => IRS1a                            ; Cell * kIRS1Act*IRS1*Insulin;
    R1b     : IRS1a => IRS1                            ; Cell * kIRS1Inact*IRS1a;
    R1i     : IRS1a => pIRS1                           ; Cell * kIRS1Phos*IRS1a*pS6K;
    R1Out2  : pIRS1 =>                                  ; Cell * kIRS1Dephos*pIRS1;
    R2f     : PI3K  => pPI3K                            ; Cell * kPI3KPhos*PI3K*IRS1a;
    R2b     : pPI3K => PI3K                             ; Cell * kPI3KDephos*pPI3K;
    R3f     : PIP2 => PIP3                              ; Cell * kPIPPhos*PIP2*pPI3K;
    R3f     : PIP3 => PIP2                              ; Cell * kPIPDephos*PIP3;
    R4f     : PIP3 + PDK1 => PDK1_PIP3                  ; Cell * kPDK1BindPIP3*PIP3*PDK1;
    R4b     : PDK1_PIP3 => PIP3 + PDK1                  ; Cell * kPDK1UnbindPIP3*PDK1_PIP3;
    R5f     : PIP3 + Akt => Akt_PIP3                    ; Cell * kAktBindPIP3*PIP3*Akt;
    R5b     : Akt_PIP3 => PIP3 + Akt                    ; Cell * kAktUnbindPIP3*Akt_PIP3;
    R6f     : Akt_PIP3 => pAkt                          ; Cell * kAktPhos*Akt_PIP3*PDK1_PIP3;
    R6b     : pAkt => Akt_PIP3                          ; Cell * kAktDephos*pAkt;
    R6i     : Akt + MK2206 => Akti                      ; Cell * kAktBindMK*Akt*MK2206;
    R7f     : TSC2 => pTSC2                             ; Cell * kTSC2Phos*TSC2*pAkt;
    R7b     : pTSC2 => TSC2                             ; Cell * kTSC2Dephos*pTSC2;
    R8f     : RhebGDP => RhebGTP                        ; Cell * kRhebPhos*RhebGDP*AA;
    R8b     : RhebGTP => RhebGDP                        ; Cell * kRhebDephos*RhebGTP*TSC2;
    R9f     : ppPras40 + mTORC1cyt  => mTORC1_Pras40cyt ; Cell * kmTORC1BindPras40*ppPras40*mTORC1cyt; 
    R9b     : mTORC1_Pras40cyt => ppPras40 + mTORC1cyt  ; Cell * kmTORC1UnbindPras40*mTORC1_Pras40cyt*pAkt;
    R10f    : mTORC1cyt + RAG_GTP => mTORC1lys + RAG_GDP; Cell * kmTORC1CytToLys*mTORC1cyt*RAG_GTP;
    R10b    : mTORC1lys => mTORC1cyt                    ; Cell * kmTORC1LysToCyt*mTORC1lys;
    R11f    : RAG_GDP => RAG_GTP                        ; Cell * kRAGPhos*RAG_GDP*AA;
    R11b    : RAG_GTP => RAG_GDP                        ; Cell * kRAGDephos*RAG_GTP;
    R12f    : mTORC1lys + RhebGTP => pmTORC1 + RhebGDP  ; Cell * kmTORC1Phos*mTORC1lys*RhebGTP;
    R12b    : pmTORC1 => mTORC1lys                      ; Cell * kmTORC1Dephos*pmTORC1*AMPK;
    R13fi   : mTORC1cyt + Rapamycin => mTORC1i          ; Cell * kmTORC1BindRapa*mTORC1cyt*Rapamycin;
    R13bi   : mTORC1i => mTORC1cyt + Rapamycin          ; Cell * kmTORC1UnbindRapa*mTORC1i;
    R13fii   : mTORC1lys + Rapamycin => mTORC1ii        ; Cell * kmTORC1BindRapa*mTORC1lys*Rapamycin;
    R13bii   : mTORC1ii => mTORC1lys + Rapamycin        ; Cell * kmTORC1UnbindRapa*mTORC1ii;
    R13fiii   : pmTORC1 + Rapamycin => mTORC1iii        ; Cell * kmTORC1BindRapa*pmTORC1*Rapamycin;
    R13biii   : mTORC1iii => pmTORC1 + Rapamycin       ; Cell * kmTORC1UnbindRapa*mTORC1iii;
    R13fiv  : mTORC1_Pras40cyt + Rapamycin => mTORC1iv  ; Cell * kmTORC1BindRapa*mTORC1_Pras40cyt*Rapamycin;
    R13biv  : mTORC1iv => mTORC1_Pras40cyt + Rapamycin  ; Cell * kmTORC1UnbindRapa*mTORC1iv;
    R14f    : FourEBP1 => pFourEBP1                     ; Cell * k4EBP1Phos*FourEBP1*pmTORC1;
    R14b    : pFourEBP1 => FourEBP1                     ; Cell * k4EBP1Dephos*pFourEBP1;
    R15f    : S6K => pS6K                               ; Cell * kS6KPhos*S6K*pmTORC1;
    R15b    : pS6K => S6K                               ; Cell * kS6KDehos*pS6K;
    R16fi   : AMPK => pAMPKi                            ; Cell * kAMPKInhibPhosByAkt*AMPK*pAkt;
    R16fii  : AMPK => pAMPKi                            ; Cell * kAMPKInhibPhosByS6K*AMPK*pS6K;
    R16b    : pAMPKi => AMPK                            ; Cell * kAMPKDephos*pAMPKi;
    R17f    : AMPK => pAMPK                             ; Cell * kAMPKActPhos*AMPK*CaMKK2a;
    R17b    : pAMPK => AMPK                             ; Cell * kAMPKActDephos*pAMPK;
    R18f    : CaMKK2 => CaMKK2a                         ; Cell * kCaMKK2Act*CaMKK2*Ca2;
    R18b    : CaMKK2a => CaMKK2                         ; Cell * kCaMKK2Inact*CaMKK2a;
    R19f    : LKB1 => LKB1a                             ; Cell * kLKB1Act*LKB1*AA;
    R19b    : LKB1a => LKB1                             ; Cell * kLKB1Inact*LKB1a;
    R20f    : RTK => pRTK                               ; Cell * kTKRBindEGF*RTK*EGF;
    R20b    : pRTK => RTK                               ; Cell * kTKRUnbindEGF*pRTK;
    R21f    : pRTK + Sos => pRTKa                       ; Cell * kTKRBindSOS*pRTK*Sos;
    R21b    : pRTKa => pRTK + Sos                       ; Cell * kTKRUnbindSOS*pRTKa;
    R22f    : Sos => pSos                               ; Cell * kSOSPhos*Sos*pErk;
    R22b    : pSos => Sos                               ; Cell * kSOSDephos*pSos;
    R23f    : RasGDP => RasGTP                          ; Cell * kRasLoad*RasGDP*pRTKa;
    R23b    : RasGTP => RasGDP                          ; Cell * kRasUnload*RasGTP;
    R24f    : Raf + RasGTP => pRaf + RasGDP             ; Cell * kRafPhos*Raf*RasGTP;
    R24b    : pRaf => Raf                               ; Cell * kRafDephos*pRaf;
    R25f    : Mek => pMek                               ; Cell * kMekPhos*Mek*pRaf;
    R25b    : pMek => Mek                               ; Cell * kMekDephos*pMek*pErk;
    R26f    : Erk => pErk                               ; Cell * kErkPhos*Erk*pMek;
    R26b    : pErk => Erk                               ; Cell * kErkDephos*pErk;
    R27f    : Mek => Meki                               ; Cell * kMekBindAzd*Mek*AZD;
    R27b    : Meki => Mek                               ; Cell * kMekUnbindAzd*Meki;
    R28f    : PLCeps => pPLCeps                         ; Cell * kPLCPhos*PLCeps*RasGTP;
    R28b    : pPLCeps => PLCeps                         ; Cell * kPLCDephos*pPLCeps;
    R29f    : PIP2 => IP3 + DAG                         ; Cell * kPIP2Break*PIP2*pPLCeps;
    R29b    : IP3 + DAG => PIP2                         ; Cell * kPIP2form*IP3*DAG;
    R30f    : IP3 + IpR => IpRa                         ; Cell * kIP3BindIpR*IP3*IpR;
    R30b    : IpRa => IP3 + IpR                         ; Cell * kIP3UnbindIpR*IpRa;
    R31f    : => Ca2                                    ; Cell * kCa2In*IpRa;
    R31b    : Ca2 =>                                    ; Cell * kCa2Out*Ca2;
end

"""






































