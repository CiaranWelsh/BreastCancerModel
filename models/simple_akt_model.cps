<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.25 (Build 207) (http://www.copasi.org) at 2019-07-15T18:09:18Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="25" versionDevel="207" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_13">
            <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          <b>Mass action rate law for irreversible reactions</b>
          <p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
        </body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="MMWithKcat_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_40">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kIRS1Phos_kcat*S6KpT389*IRS1/(_kIRS1Phos_km+IRS1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="IRS1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_263" name="S6KpT389" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_262" name="_kIRS1Phos_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="_kIRS1Phos_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="MMWithKcat_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_41">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kIRS1Dephos_kcat*Insulin*IRS1pS636_639/(_kIRS1Dephos_km+IRS1pS636_639)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="IRS1pS636_639" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="Insulin" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="_kIRS1Dephos_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="_kIRS1Dephos_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="MMWithKcat_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_42">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kPI3KPhos_kcat*IRS1*PI3K/(_kPI3KPhos_km+PI3K)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="IRS1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_270" name="PI3K" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_269" name="_kPI3KPhos_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="_kPI3KPhos_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="MMWithKcat_4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_43">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kS6KPhosS229_kcat*_pPI3K*S6K/(_kS6KPhosS229_km+S6K)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="S6K" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_274" name="_kS6KPhosS229_kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="_kS6KPhosS229_km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="_pPI3K" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="MMWithKcat_5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_44">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kAktPhos_kcat*_pPI3K*Akt/(_kAktPhos_km+Akt)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_279" name="Akt" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_278" name="_kAktPhos_kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="_kAktPhos_km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="_pPI3K" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="MMWithKcat_6" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_45">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kTSC2Phos_kcat*AktpT308*TSC2/(_kTSC2Phos_km+TSC2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="AktpT308" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="TSC2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_281" name="_kTSC2Phos_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="_kTSC2Phos_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="MMWithKcat_7" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_46">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kPras40PhosByAkt_kcat*AktpT308*PRAS40/(_kPras40PhosByAkt_km+PRAS40)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="AktpT308" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_286" name="PRAS40" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="_kPras40PhosByAkt_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="_kPras40PhosByAkt_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="MMWithKcat_8" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_47">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kFourEBP1Phos_kcat*TSC2*FourEBP1/(_kFourEBP1Phos_km+FourEBP1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="FourEBP1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_290" name="TSC2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="_kFourEBP1Phos_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="_kFourEBP1Phos_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="MMWithKcat_9" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_48">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kS6KT389Phos_kcat*TSC2*S6K/(_kS6KT389Phos_km+S6K)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="S6K" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_294" name="TSC2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_293" name="_kS6KT389Phos_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="_kS6KT389Phos_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="SimpleAktModel" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Compartment_0">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="IRS1" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_0">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Values[IRS1_tot],Reference=Value>-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="IRS1pS636_639" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_1">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Akt" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_2">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Values[Akt_tot],Reference=Value>-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="AktpT308" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_3">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="TSC2" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_4">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Values[TSC2_tot],Reference=Value>-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="TSC2pT1462" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_5">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="PRAS40" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_6">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40_tot],Reference=Value>-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="PRAS40pT246" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_7">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="S6K" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_8">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Values[S6K_tot],Reference=Value>-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=Concentration>-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="S6KpT389" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_9">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="S6KpT229" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_10">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="FourEBP1" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_11">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Values[FourEBP1_tot],Reference=Value>-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="FourEBP1pT37_46" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_12">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="PI3K" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_13">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Values[PI3K_tot],Reference=Value>-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[_pPI3K],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="_pPI3K" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_14">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Insulin" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_0">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="offset_amount" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_1">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="FourEBP1_tot" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_2">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.5936870000000001+&lt;CN=Root,Model=SimpleAktModel,Vector=Values[offset_amount],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Akt_tot" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_3">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.73613799999999996+&lt;CN=Root,Model=SimpleAktModel,Vector=Values[offset_amount],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="IRS1_tot" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_4">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.458843+&lt;CN=Root,Model=SimpleAktModel,Vector=Values[offset_amount],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="TSC2_tot" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_5">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.81617600000000001+&lt;CN=Root,Model=SimpleAktModel,Vector=Values[offset_amount],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="PRAS40_tot" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_6">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.95477500000000004+&lt;CN=Root,Model=SimpleAktModel,Vector=Values[offset_amount],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="S6K_tot" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_7">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.48741899999999999+&lt;CN=Root,Model=SimpleAktModel,Vector=Values[offset_amount],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="PI3K_tot" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_8">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1+&lt;CN=Root,Model=SimpleAktModel,Vector=Values[offset_amount],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="IRS1pS636_639_obs" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_9">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="AktpT308_obs" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_10">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="TSC2pT1462_obs" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_11">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="PRAS40pT246_obs" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_12">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="S6KpT389_obs" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_13">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="S6KpS229_obs" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_14">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="FourEBP1pT37_46_obs" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_15">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="_kIRS1Phos_km" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_16">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="_kIRS1Phos_kcat" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_17">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="_kIRS1Dephos_km" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_18">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="_kIRS1Dephos_kcat" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_19">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="_kPI3KPhos_km" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_20">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="_kPI3KPhos_kcat" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_21">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="_kPI3KDephos" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_22">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="_kS6KPhosS229_km" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_23">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="_kS6KPhosS229_kcat" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_24">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="_kS6KDephosS229" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_25">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="_kAktPhos_km" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_26">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="_kAktPhos_kcat" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_27">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="_kAktDephos" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_28">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="_kTSC2Phos_km" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_29">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="_kTSC2Phos_kcat" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_30">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="_kTSC2Dephos" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_31">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="_kPras40PhosByAkt_km" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_32">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="_kPras40PhosByAkt_kcat" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_33">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="_kPras40Dephos" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_34">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="_kFourEBP1Phos_km" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_35">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="_kFourEBP1Phos_kcat" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_36">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="_kFourEBP1Dephos" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_37">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="_kS6KT389Phos_km" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_38">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="_kS6KT389Phos_kcat" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_39">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="_kS6KDephos" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_40">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R1f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_0">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5013" name="_kIRS1Phos_kcat" value="0.1"/>
          <Constant key="Parameter_5012" name="_kIRS1Phos_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R1b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_1">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5011" name="Insulin" value="1"/>
          <Constant key="Parameter_5010" name="_kIRS1Dephos_kcat" value="0.1"/>
          <Constant key="Parameter_5009" name="_kIRS1Dephos_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R2f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_2">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5008" name="_kPI3KPhos_kcat" value="0.1"/>
          <Constant key="Parameter_5007" name="_kPI3KPhos_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R2b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_3">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="R3f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_4">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="_kS6KPhosS229_kcat" value="0.1"/>
          <Constant key="Parameter_5004" name="_kS6KPhosS229_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="R3b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_5">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="R4f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_6">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5002" name="_kAktPhos_kcat" value="0.1"/>
          <Constant key="Parameter_5001" name="_kAktPhos_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="R4b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_7">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="R5f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_8">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="_kTSC2Phos_kcat" value="0.1"/>
          <Constant key="Parameter_4998" name="_kTSC2Phos_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="R5b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_9">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="R6f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_10">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="_kPras40PhosByAkt_kcat" value="0.1"/>
          <Constant key="Parameter_4995" name="_kPras40PhosByAkt_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="R6b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_11">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="R7f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_12">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="_kFourEBP1Phos_kcat" value="0.1"/>
          <Constant key="Parameter_4992" name="_kFourEBP1Phos_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="R7b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_13">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="R8f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_14">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="_kS6KT389Phos_kcat" value="0.1"/>
          <Constant key="Parameter_4989" name="_kS6KT389Phos_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="R8b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_15">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-15T17:40:12Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-15T17:40:14Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=SimpleAktModel" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1]" value="3.0110708949999998e+24" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639]" value="2.76321760534897e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[Akt]" value="3.1019371858267733e+24" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308]" value="3.5244645047392895e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2]" value="3.1084350768181831e+24" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462]" value="3.9414857794132101e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40]" value="3.2622140807109072e+24" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246]" value="3.23835857043818e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6K]" value="3.0523996496764118e+24" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389]" value="1.06782209363564e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229]" value="1.45419668874025e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1]" value="3.5825781730127902e+24" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46]" value="3.8823363027518297e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PI3K]" value="3.5530636561000004e+24" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[_pPI3K]" value="6.0221417900000001e+22" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[offset_amount]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[FourEBP1_tot]" value="6.5936870000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[Akt_tot]" value="5.7361380000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1_tot]" value="5.4588429999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2_tot]" value="5.8161760000000005" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40_tot]" value="5.9547749999999997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[S6K_tot]" value="5.487419" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[PI3K_tot]" value="6" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs]" value="0.458843" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs]" value="0.58525099999999997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs]" value="0.65449900000000005" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs]" value="0.53774200000000005" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs]" value="0.177316" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpS229_obs]" value="0.241475" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[FourEBP1pT37_46_obs]" value="0.64467699999999994" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos_km]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos_kcat]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Dephos_km]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Dephos_kcat]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kPI3KPhos_km]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kPI3KPhos_kcat]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kPI3KDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KPhosS229_km]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KPhosS229_kcat]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KDephosS229]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kAktPhos_km]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kAktPhos_kcat]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kAktDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Phos_km]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Phos_kcat]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Dephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40PhosByAkt_km]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40PhosByAkt_kcat]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40Dephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Phos_km]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Phos_kcat]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Dephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KT389Phos_km]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KT389Phos_kcat]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R1f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R1f],ParameterGroup=Parameters,Parameter=_kIRS1Phos_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R1f],ParameterGroup=Parameters,Parameter=_kIRS1Phos_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos_km],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R1b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R1b],ParameterGroup=Parameters,Parameter=Insulin" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R1b],ParameterGroup=Parameters,Parameter=_kIRS1Dephos_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Dephos_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R1b],ParameterGroup=Parameters,Parameter=_kIRS1Dephos_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Dephos_km],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R2f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R2f],ParameterGroup=Parameters,Parameter=_kPI3KPhos_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kPI3KPhos_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R2f],ParameterGroup=Parameters,Parameter=_kPI3KPhos_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kPI3KPhos_km],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R2b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R2b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kPI3KDephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R3f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R3f],ParameterGroup=Parameters,Parameter=_kS6KPhosS229_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KPhosS229_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R3f],ParameterGroup=Parameters,Parameter=_kS6KPhosS229_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KPhosS229_km],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R3b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R3b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KDephosS229],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R4f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R4f],ParameterGroup=Parameters,Parameter=_kAktPhos_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kAktPhos_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R4f],ParameterGroup=Parameters,Parameter=_kAktPhos_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kAktPhos_km],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R4b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R4b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kAktDephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R5f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R5f],ParameterGroup=Parameters,Parameter=_kTSC2Phos_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Phos_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R5f],ParameterGroup=Parameters,Parameter=_kTSC2Phos_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Phos_km],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R5b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R5b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Dephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R6f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R6f],ParameterGroup=Parameters,Parameter=_kPras40PhosByAkt_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40PhosByAkt_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R6f],ParameterGroup=Parameters,Parameter=_kPras40PhosByAkt_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40PhosByAkt_km],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R6b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R6b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40Dephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R7f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R7f],ParameterGroup=Parameters,Parameter=_kFourEBP1Phos_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Phos_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R7f],ParameterGroup=Parameters,Parameter=_kFourEBP1Phos_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Phos_km],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R7b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R7b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Dephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R8f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R8f],ParameterGroup=Parameters,Parameter=_kS6KT389Phos_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KT389Phos_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R8f],ParameterGroup=Parameters,Parameter=_kS6KT389Phos_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KT389Phos_km],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R8b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R8b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KDephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 2.76321760534897e+23 3.5244645047392895e+23 3.9414857794132101e+23 3.23835857043818e+23 1.06782209363564e+23 1.45419668874025e+23 3.8823363027518297e+23 6.0221417900000001e+22 3.0110708949999998e+24 3.1019371858267733e+24 3.1084350768181831e+24 3.2622140807109072e+24 3.0523996496764118e+24 3.5825781730127902e+24 3.5530636561000004e+24 6.5936870000000001 5.7361380000000004 5.4588429999999999 5.8161760000000005 5.9547749999999997 5.487419 6 0.458843 0.58525099999999997 0.65449900000000005 0.53774200000000005 0.177316 0.241475 0.64467699999999994 1 1 5 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="PEData.txt" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="605.79735559999995"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kAktDephos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="153.184984954215"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kAktPhos_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="16.134833442219747"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kAktPhos_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="5917.7879467702251"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Dephos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="0.00056614633564081875"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Phos_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="1644.9271592597772"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Phos_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="14.879256628536123"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Dephos_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="0.88018393581223853"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Dephos_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="9.8932651131199538"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="7.4022848749344723"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="1.776789006804365e-05"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kPI3KDephos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="0.0036684963547650566"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kPI3KPhos_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="0.014378822267747822"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kPI3KPhos_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="3.9138139780287862"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40Dephos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="2703.7101917224159"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40PhosByAkt_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="8276.3950775412632"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40PhosByAkt_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="7.2892311233011578e-05"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KDephos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="4.9420362560014174e-05"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KDephosS229],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="742.04298358702499"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KPhosS229_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="0.00040394116377940714"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KPhosS229_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="0.00090612315379210643"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KT389Phos_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="0.0082769704622902736"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KT389Phos_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="1.3489238404611601e-05"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Dephos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="0.21700292588399342"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Phos_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-05"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <Parameter name="StartValue" type="float" value="1969.1172775342891"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Phos_km],Reference=InitialValue"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="normed_to_max_MCF71">
            <Parameter name="Key" type="key" value="Experiment_11"/>
            <Parameter name="File Name" type="file" value="../data/CopasiDataFiles/normed_to_max_MCF71.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="24"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="22">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="23">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="normed_to_max_MCF72">
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="File Name" type="file" value="../data/CopasiDataFiles/normed_to_max_MCF72.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="24"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="22">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="23">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="normed_to_max_MCF73">
            <Parameter name="Key" type="key" value="Experiment_1"/>
            <Parameter name="File Name" type="file" value="../data/CopasiDataFiles/normed_to_max_MCF73.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="24"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="22">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="23">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="normed_to_max_MCF74">
            <Parameter name="Key" type="key" value="Experiment_9"/>
            <Parameter name="File Name" type="file" value="../data/CopasiDataFiles/normed_to_max_MCF74.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="24"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="22">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="23">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="normed_to_max_T47D1">
            <Parameter name="Key" type="key" value="Experiment_8"/>
            <Parameter name="File Name" type="file" value="../data/CopasiDataFiles/normed_to_max_T47D1.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="24"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="22">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="23">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="normed_to_max_T47D2">
            <Parameter name="Key" type="key" value="Experiment_4"/>
            <Parameter name="File Name" type="file" value="../data/CopasiDataFiles/normed_to_max_T47D2.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="24"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="22">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="23">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="normed_to_max_T47D3">
            <Parameter name="Key" type="key" value="Experiment_7"/>
            <Parameter name="File Name" type="file" value="../data/CopasiDataFiles/normed_to_max_T47D3.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="24"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="22">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="23">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="normed_to_max_T47D4">
            <Parameter name="Key" type="key" value="Experiment_3"/>
            <Parameter name="File Name" type="file" value="../data/CopasiDataFiles/normed_to_max_T47D4.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="24"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="22">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="23">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="normed_to_max_ZR-751">
            <Parameter name="Key" type="key" value="Experiment_6"/>
            <Parameter name="File Name" type="file" value="../data/CopasiDataFiles/normed_to_max_ZR-751.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="22"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="normed_to_max_ZR-752">
            <Parameter name="Key" type="key" value="Experiment_5"/>
            <Parameter name="File Name" type="file" value="../data/CopasiDataFiles/normed_to_max_ZR-752.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="24"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="22">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="23">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="normed_to_max_ZR-753">
            <Parameter name="Key" type="key" value="Experiment_2"/>
            <Parameter name="File Name" type="file" value="../data/CopasiDataFiles/normed_to_max_ZR-753.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="22"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="normed_to_max_ZR-754">
            <Parameter name="Key" type="key" value="Experiment_10"/>
            <Parameter name="File Name" type="file" value="../data/CopasiDataFiles/normed_to_max_ZR-754.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="24"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT229],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="22">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="23">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Particle Swarm" type="ParticleSwarm">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="3000"/>
        <Parameter name="Swarm Size" type="unsignedInteger" value="200"/>
        <Parameter name="Std. Deviation" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Iterations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="multi_parameter_estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
      </Table>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="[FourEBP1pT37_46]" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="normed_to_max_MCF71(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF71(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF71(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Values[AktpT308_obs]" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="normed_to_max_MCF71(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF71(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF71(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Values[IRS1pS636_639_obs]" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="normed_to_max_MCF71(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF71(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF71(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Values[PRAS40pT246_obs]" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="normed_to_max_MCF71(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF71(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF71(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Values[S6KpT389_obs]" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="normed_to_max_MCF71(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF71(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF71(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[3],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[3],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[3],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Values[TSC2pT1462_obs]" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="normed_to_max_MCF71(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF71(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF71(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF71,Vector=Fitted Points[5],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF72(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF72,Vector=Fitted Points[5],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF73(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF73,Vector=Fitted Points[5],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_MCF74(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_MCF74,Vector=Fitted Points[5],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D1(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D1,Vector=Fitted Points[5],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D2(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D2,Vector=Fitted Points[5],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D3(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D3,Vector=Fitted Points[5],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_T47D4(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_T47D4,Vector=Fitted Points[5],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-751(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-751,Vector=Fitted Points[5],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-752(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-752,Vector=Fitted Points[5],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[4],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[4],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-753(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-753,Vector=Fitted Points[4],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[5],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[5],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="normed_to_max_ZR-754(Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=normed_to_max_ZR-754,Vector=Fitted Points[5],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Progress of Fit" type="Plot2D" active="1" taskTypes="Parameter Estimation">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="sum of squares" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="simple_akt_model.sbml">
    <SBMLMap SBMLid="Akt" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Akt_tot" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="AktpT308" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="AktpT308_obs" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="Cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="FourEBP1" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="FourEBP1_tot" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="FourEBP1pT37_46" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="FourEBP1pT37_46_obs" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="IRS1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="IRS1_tot" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="IRS1pS636_639" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="IRS1pS636_639_obs" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="Insulin" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="PI3K" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="PI3K_tot" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="PRAS40" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="PRAS40_tot" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="PRAS40pT246" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="PRAS40pT246_obs" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="R1b" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="R1f" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="R2b" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="R2f" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="R3b" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="R3f" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="R4b" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="R4f" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="R5b" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="R5f" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="R6b" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="R6f" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="R7b" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="R7f" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="R8b" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="R8f" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="S6K" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="S6K_tot" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="S6KpS229_obs" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="S6KpT229" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="S6KpT389" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="S6KpT389_obs" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="TSC2" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="TSC2_tot" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="TSC2pT1462" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="TSC2pT1462_obs" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="_kAktDephos" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="_kAktPhos_kcat" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="_kAktPhos_km" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="_kFourEBP1Dephos" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="_kFourEBP1Phos_kcat" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="_kFourEBP1Phos_km" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="_kIRS1Dephos_kcat" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="_kIRS1Dephos_km" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="_kIRS1Phos_kcat" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="_kIRS1Phos_km" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="_kPI3KDephos" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="_kPI3KPhos_kcat" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="_kPI3KPhos_km" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="_kPras40Dephos" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="_kPras40PhosByAkt_kcat" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="_kPras40PhosByAkt_km" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="_kS6KDephos" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="_kS6KDephosS229" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="_kS6KPhosS229_kcat" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="_kS6KPhosS229_km" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="_kS6KT389Phos_kcat" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="_kS6KT389Phos_km" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="_kTSC2Dephos" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="_kTSC2Phos_kcat" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="_kTSC2Phos_km" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="_pPI3K" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="offset_amount" COPASIkey="ModelValue_1"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-15T17:40:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-15T17:40:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-15T17:40:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-15T17:40:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-15T17:40:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-15T17:40:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
