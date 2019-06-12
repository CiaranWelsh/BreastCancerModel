<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="25" versionDevel="207" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_13">
            <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163"/>
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
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="MMWithKcat_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_51">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kIRS1Phos_kcat*Insulin*IRS1/(_kIRS1Phos_km+IRS1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="IRS1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_321" name="Insulin" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="_kIRS1Phos_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="_kIRS1Phos_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for R2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_52">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kIRS1Dephos*IRS1pS636_639*S6KpT389
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_318" name="IRS1pS636_639" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="S6KpT389" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_329" name="_kIRS1Dephos" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="MMWithKcat_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_53">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kAktPhos_kcat*IRS1pS636_639*Akt/(_kAktPhos_km+Akt)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="Akt" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_335" name="IRS1pS636_639" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_336" name="_kAktPhos_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="_kAktPhos_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="MMWithKcat_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_54">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kTSC2Phos_kcat*AktpT308*TSC2/(_kTSC2Phos_km+TSC2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="AktpT308" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_345" name="TSC2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_346" name="_kTSC2Phos_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="_kTSC2Phos_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="MMWithKcat_4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_55">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kPras40PhosByAkt_kcat*AktpT308*PRAS40/(_kPras40PhosByAkt_km+PRAS40)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_354" name="AktpT308" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_355" name="PRAS40" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_356" name="_kPras40PhosByAkt_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="_kPras40PhosByAkt_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for R9" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_56">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kPras40Dephos*TSC2pT1462
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_352" name="TSC2pT1462" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_316" name="_kPras40Dephos" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="MMWithKcat_5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_57">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kFourEBP1Phos_kcat*TSC2*FourEBP1/(_kFourEBP1Phos_km+FourEBP1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_366" name="FourEBP1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_367" name="TSC2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_368" name="_kFourEBP1Phos_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="_kFourEBP1Phos_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="MMWithKcat_6" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_58">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        _kS6KPhos_kcat*TSC2*S6K/(_kS6KPhos_km+S6K)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_376" name="S6K" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_377" name="TSC2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_378" name="_kS6KPhos_kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="_kS6KPhos_km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="SimpleAktModel" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m&#178;" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
      <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
        <rdf:Description rdf:about="#Model_1">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="IRS1" simulationType="assignment" compartment="Compartment_0" addNoise="false" particle_numbers="1.1077464848466242e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_0">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Values[IRS1_tot],Reference=Value&gt;-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="IRS1pS636_639" simulationType="reactions" compartment="Compartment_0" addNoise="false" particle_numbers="5.18706945440607e+23">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_1">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Akt" simulationType="assignment" compartment="Compartment_0" addNoise="false" particle_numbers="1.057339953635966e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_2">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Values[Akt_tot],Reference=Value&gt;-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="AktpT308" simulationType="reactions" compartment="Compartment_0" addNoise="false" particle_numbers="2.92822429039497e+23">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_3">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="TSC2" simulationType="assignment" compartment="Compartment_0" addNoise="false" particle_numbers="8.979471091666041e+23">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_4">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Values[TSC2_tot],Reference=Value&gt;-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="TSC2pT1462" simulationType="reactions" compartment="Compartment_0" addNoise="false" particle_numbers="3.88402250245303e+23">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_5">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="PRAS40" simulationType="assignment" compartment="Compartment_0" addNoise="false" particle_numbers="8.82265451945444e+23">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_6">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40_tot],Reference=Value&gt;-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="PRAS40pT246" simulationType="reactions" compartment="Compartment_0" addNoise="false" particle_numbers="3.1130377997882795e+23">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_7">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="S6K" simulationType="assignment" compartment="Compartment_0" addNoise="false" particle_numbers="1.1653320112851409e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_8">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Values[S6K_tot],Reference=Value&gt;-&lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="S6KpT389" simulationType="reactions" compartment="Compartment_0" addNoise="false" particle_numbers="2.38269653206424e+23">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_9">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="FourEBP1" simulationType="assignment" compartment="Compartment_0" addNoise="false" particle_numbers="6.02214179e+19">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_10">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0001
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="FourE_BP1pT37_46" simulationType="reactions" compartment="Compartment_0" addNoise="false" particle_numbers="2.93982293548251e+23">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_11">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Insulin" simulationType="fixed" addNoise="false" initial_value="1.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_0">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="IRS1_tot" simulationType="assignment" addNoise="false" initial_value="2.7007890000000003">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_1">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.7007890000000001+1
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Akt_tot" simulationType="assignment" addNoise="false" initial_value="2.241997">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_2">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.241997+1
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="TSC2_tot" simulationType="assignment" addNoise="false" initial_value="2.1360330000000003">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_3">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.1360330000000001+1
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="PRAS40_tot" simulationType="assignment" addNoise="false" initial_value="1.981968">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_4">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.98196799999999995+1
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="FourEBP1_tot" simulationType="assignment" addNoise="false" initial_value="1.458272">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_5">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.45827200000000001+1
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="S6K_tot" simulationType="assignment" addNoise="false" initial_value="2.330735">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_6">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.330735+1
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="IRS1pS636_639_obs" simulationType="assignment" addNoise="false" initial_value="0.8613329999999999">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_7">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="AktpT308_obs" simulationType="assignment" addNoise="false" initial_value="0.486243">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_8">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="TSC2pT1462_obs" simulationType="assignment" addNoise="false" initial_value="0.644957">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_9">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="PRAS40pT246_obs" simulationType="assignment" addNoise="false" initial_value="0.516932">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_10">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="S6KpT389_obs" simulationType="assignment" addNoise="false" initial_value="0.395656">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_11">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="FourE_BP1pT37_46_obs" simulationType="assignment" addNoise="false" initial_value="0.488169">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_12">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourE_BP1pT37_46],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="_kIRS1Phos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_13">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="_kIRS1Dephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_14">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="_kAktPhos_km" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_15">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="_kAktPhos_kcat" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_16">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="_kAktDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_17">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="_kTSC2Phos_km" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_18">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="_kTSC2Phos_kcat" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_19">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="_kTSC2Dephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_20">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="_kPras40PhosByAkt_km" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_21">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="_kPras40PhosByAkt_kcat" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_22">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="_kPras40Dephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_23">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="_kFourEBP1Phos_km" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_24">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="_kFourEBP1Phos_kcat" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_25">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="_kFourEBP1Dephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_26">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="_kS6KPhos_km" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_27">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="_kS6KPhos_kcat" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_28">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="_kS6KDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_29">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="_kIRS1Phos_km" simulationType="fixed" addNoise="false" initial_value="1.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_30">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="_kIRS1Phos_kcat" simulationType="fixed" addNoise="false" initial_value="1.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_31">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_0">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
        <ListOfConstants>
          <Constant key="Parameter_5003" name="Insulin" value="1"/>
          <Constant key="Parameter_5002" name="_kIRS1Phos_kcat" value="1"/>
          <Constant key="Parameter_5001" name="_kIRS1Phos_km" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_1">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="_kIRS1Dephos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_2">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="_kAktPhos_kcat" value="0.1"/>
          <Constant key="Parameter_4998" name="_kAktPhos_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_3">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_4997" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="R5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_4">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_4996" name="_kTSC2Phos_kcat" value="0.1"/>
          <Constant key="Parameter_4995" name="_kTSC2Phos_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="R6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_5">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_4994" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="R7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_6">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_4993" name="_kPras40PhosByAkt_kcat" value="0.1"/>
          <Constant key="Parameter_4992" name="_kPras40PhosByAkt_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="R9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_7">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="_kPras40Dephos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="R10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_8">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="_kFourEBP1Phos_kcat" value="0.1"/>
          <Constant key="Parameter_4989" name="_kFourEBP1Phos_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="R11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_9">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="R12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_10">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:12Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_4987" name="_kS6KPhos_kcat" value="0.1"/>
          <Constant key="Parameter_4986" name="_kS6KPhos_km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="R13" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_11">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:12Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_4985" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_29"/>
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
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelParameterSet_1">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1]" value="1.1077464848466242e+24" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639]" value="5.1870694544060697e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[Akt]" value="1.057339953635966e+24" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308]" value="2.9282242903949699e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2]" value="8.979471091666041e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462]" value="3.8840225024530297e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40]" value="8.8226545194544398e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246]" value="3.1130377997882795e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6K]" value="1.1653320112851409e+24" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389]" value="2.3826965320642399e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1]" value="6.0221417900000002e+19" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourE_BP1pT37_46]" value="2.93982293548251e+23" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1_tot]" value="2.7007890000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[Akt_tot]" value="2.241997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2_tot]" value="2.1360330000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40_tot]" value="1.981968" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[FourEBP1_tot]" value="1.458272" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[S6K_tot]" value="2.3307349999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs]" value="0.8613329999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs]" value="0.48624299999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs]" value="0.644957" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs]" value="0.51693199999999995" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs]" value="0.39565600000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[FourE_BP1pT37_46_obs]" value="0.48816900000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Dephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
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
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KPhos_km]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KPhos_kcat]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos_km]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos_kcat]" value="1" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=Insulin" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=_kIRS1Phos_kcat" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos_kcat],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=_kIRS1Phos_km" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos_km],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=_kIRS1Dephos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Dephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=_kAktPhos_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kAktPhos_kcat],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=_kAktPhos_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kAktPhos_km],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kAktDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R5],ParameterGroup=Parameters,Parameter=_kTSC2Phos_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Phos_kcat],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R5],ParameterGroup=Parameters,Parameter=_kTSC2Phos_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Phos_km],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R6],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Dephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R7],ParameterGroup=Parameters,Parameter=_kPras40PhosByAkt_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40PhosByAkt_kcat],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R7],ParameterGroup=Parameters,Parameter=_kPras40PhosByAkt_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40PhosByAkt_km],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R9],ParameterGroup=Parameters,Parameter=_kPras40Dephos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40Dephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R10],ParameterGroup=Parameters,Parameter=_kFourEBP1Phos_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Phos_kcat],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R10],ParameterGroup=Parameters,Parameter=_kFourEBP1Phos_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Phos_km],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Dephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R12],ParameterGroup=Parameters,Parameter=_kS6KPhos_kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KPhos_kcat],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R12],ParameterGroup=Parameters,Parameter=_kS6KPhos_km" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KPhos_km],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=SimpleAktModel,Vector=Reactions[R13],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KDephos],Reference=InitialValue&gt;
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
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
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
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 5.1870694544060697e+23 2.9282242903949699e+23 3.8840225024530297e+23 3.1130377997882795e+23 2.3826965320642399e+23 2.93982293548251e+23 1.1077464848466242e+24 1.057339953635966e+24 8.979471091666041e+23 8.8226545194544398e+23 1.1653320112851409e+24 6.0221417900000002e+19 2.7007890000000003 2.241997 2.1360330000000003 1.981968 1.458272 2.3307349999999998 0.8613329999999999 0.48624299999999998 0.644957 0.51693199999999995 0.39565600000000001 0.48816900000000002 1 1 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 1 1 
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
    <Task key="Task_16" name="Scan" type="scan" scheduled="true" updateModel="0">
      <Report append="0" confirmOverwrite="0" reference="Report_57" target="/mnt/nfs/home/b3053674/WorkingDirectory/MesiSTRAT2/BreastCancerModel/models/Problem4_interp/FitFit2/simple_akt_model/ParameterEstimationData/PEData67.txt"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="5"/>
        <ParameterGroup name="ScanItems">
        <ParameterGroup name="ScanItem"><Parameter name="Number of steps" type="unsignedInteger" value="1"/><Parameter name="Type" type="unsignedInteger" value="0"/><Parameter name="Object" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1],Reference=InitialConcentration"/></ParameterGroup></ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="0"/>
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
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="0">
      <Report reference="Report_32" target="PEData.txt" append="False" confirmOverwrite="False"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kAktDephos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kAktPhos_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kAktPhos_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Dephos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Phos_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kFourEBP1Phos_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Dephos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kIRS1Phos_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40Dephos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40PhosByAkt_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kPras40PhosByAkt_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KDephos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KPhos_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kS6KPhos_km],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Dephos],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Phos_kcat],Reference=InitialValue"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments"/>
            <ParameterGroup name="Affected Cross Validation Experiments"/>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="UpperBound" type="cn" value="2500"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[_kTSC2Phos_km],Reference=InitialValue"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="copasi_data_interp0">
            <Parameter name="Key" type="key" value="Experiment_copasi_data_interp0"/>
            <Parameter name="File Name" type="file" value="/mnt/nfs/home/b3053674/WorkingDirectory/MesiSTRAT2/BreastCancerModel/data/copasi_data_interp0.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="31"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value="&#9;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="30"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1"/>
              <ParameterGroup name="2">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[FourE_BP1pT37_46_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="3"/>
              <ParameterGroup name="4"/>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6"/>
              <ParameterGroup name="7"/>
              <ParameterGroup name="8"/>
              <ParameterGroup name="9"/>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11"/>
              <ParameterGroup name="12"/>
              <ParameterGroup name="13">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="14"/>
              <ParameterGroup name="15"/>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="17"/>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourE_BP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21"/>
              <ParameterGroup name="22">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="23"/>
              <ParameterGroup name="24">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="25"/>
              <ParameterGroup name="26">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="27"/>
              <ParameterGroup name="28">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="29">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="copasi_data_interp2">
            <Parameter name="Key" type="key" value="Experiment_copasi_data_interp2"/>
            <Parameter name="File Name" type="file" value="/mnt/nfs/home/b3053674/WorkingDirectory/MesiSTRAT2/BreastCancerModel/data/copasi_data_interp2.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="31"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value="&#9;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="30"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1"/>
              <ParameterGroup name="2">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[FourE_BP1pT37_46_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="3"/>
              <ParameterGroup name="4"/>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6"/>
              <ParameterGroup name="7"/>
              <ParameterGroup name="8"/>
              <ParameterGroup name="9"/>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11"/>
              <ParameterGroup name="12"/>
              <ParameterGroup name="13">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="14"/>
              <ParameterGroup name="15"/>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="17"/>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourE_BP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21"/>
              <ParameterGroup name="22">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="23"/>
              <ParameterGroup name="24">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="25"/>
              <ParameterGroup name="26">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="27"/>
              <ParameterGroup name="28">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="29">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="copasi_data_interp3">
            <Parameter name="Key" type="key" value="Experiment_copasi_data_interp3"/>
            <Parameter name="File Name" type="file" value="/mnt/nfs/home/b3053674/WorkingDirectory/MesiSTRAT2/BreastCancerModel/data/copasi_data_interp3.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="31"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value="&#9;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="30"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1"/>
              <ParameterGroup name="2">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[FourE_BP1pT37_46_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="3"/>
              <ParameterGroup name="4"/>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6"/>
              <ParameterGroup name="7"/>
              <ParameterGroup name="8"/>
              <ParameterGroup name="9"/>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11"/>
              <ParameterGroup name="12"/>
              <ParameterGroup name="13">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="14"/>
              <ParameterGroup name="15"/>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="17"/>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourE_BP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21"/>
              <ParameterGroup name="22">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="23"/>
              <ParameterGroup name="24">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="25"/>
              <ParameterGroup name="26">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="27"/>
              <ParameterGroup name="28">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="29">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="copasi_data_interp1">
            <Parameter name="Key" type="key" value="Experiment_copasi_data_interp1"/>
            <Parameter name="File Name" type="file" value="/mnt/nfs/home/b3053674/WorkingDirectory/MesiSTRAT2/BreastCancerModel/data/copasi_data_interp1.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="31"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value="&#9;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="30"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1"/>
              <ParameterGroup name="2">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[FourE_BP1pT37_46_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="3"/>
              <ParameterGroup name="4"/>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6"/>
              <ParameterGroup name="7"/>
              <ParameterGroup name="8"/>
              <ParameterGroup name="9"/>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11"/>
              <ParameterGroup name="12"/>
              <ParameterGroup name="13">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="14"/>
              <ParameterGroup name="15"/>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="17"/>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[Insulin],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[FourE_BP1pT37_46],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="21"/>
              <ParameterGroup name="22">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[AktpT308],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="23"/>
              <ParameterGroup name="24">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1pS636_639],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="25"/>
              <ParameterGroup name="26">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[PRAS40pT246],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="27"/>
              <ParameterGroup name="28">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[S6KpT389],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="29">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2pT1462],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="ss_data">
            <Parameter name="Key" type="key" value="Experiment_ss_data"/>
            <Parameter name="File Name" type="file" value="/mnt/nfs/home/b3053674/WorkingDirectory/MesiSTRAT2/BreastCancerModel/data/ss_data.csv"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="2"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="0"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Separator" type="string" value="&#9;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="2"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="19"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0"/>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[FourE_BP1pT37_46_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2"/>
              <ParameterGroup name="3"/>
              <ParameterGroup name="4">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[AktpT308_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="5"/>
              <ParameterGroup name="6"/>
              <ParameterGroup name="7"/>
              <ParameterGroup name="8"/>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[IRS1pS636_639_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10"/>
              <ParameterGroup name="11"/>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[PRAS40pT246_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="13"/>
              <ParameterGroup name="14"/>
              <ParameterGroup name="15">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[S6KpT389_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="16"/>
              <ParameterGroup name="17">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=SimpleAktModel,Vector=Values[TSC2pT1462_obs],Reference=Value"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="18">
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
        <Parameter name="Iteration Limit" type="unsignedInteger" value="3000"/>
        <Parameter name="Swarm Size" type="unsignedInteger" value="200"/>
        <Parameter name="Std. Deviation" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
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
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Elementary Flux Modes" taskType="fluxMode" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Optimization" taskType="optimization" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Parameter Estimation" taskType="parameterFitting" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Sensitivities" taskType="sensitivities" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Moieties" taskType="moieties" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report precision="6" separator="&#9;" name="multi_parameter_estimation" key="Report_57" taskType="parameterFitting">
      <Comment/>
      <Table printTitle="1">
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
      </Table>
    </Report>
  </ListOfReports>
  <SBMLReference file="simple_akt_model.sbml">
    <SBMLMap SBMLid="Akt" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Akt_tot" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="AktpT308" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="AktpT308_obs" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="Cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="FourEBP1" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="FourEBP1_tot" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="FourE_BP1pT37_46" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="FourE_BP1pT37_46_obs" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="IRS1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="IRS1_tot" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="IRS1pS636_639" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="IRS1pS636_639_obs" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Insulin" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="PRAS40" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="PRAS40_tot" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="PRAS40pT246" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="PRAS40pT246_obs" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="R1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="R10" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="R11" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="R12" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="R13" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="R2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="R3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="R4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="R5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="R6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="R7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="R9" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="S6K" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="S6K_tot" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="S6KpT389" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="S6KpT389_obs" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="TSC2" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="TSC2_tot" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="TSC2pT1462" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="TSC2pT1462_obs" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="_kAktDephos" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="_kAktPhos_kcat" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="_kAktPhos_km" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="_kFourEBP1Dephos" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="_kFourEBP1Phos_kcat" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="_kFourEBP1Phos_km" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="_kIRS1Dephos" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="_kIRS1Phos" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="_kIRS1Phos_kcat" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="_kIRS1Phos_km" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="_kPras40Dephos" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="_kPras40PhosByAkt_kcat" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="_kPras40PhosByAkt_km" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="_kS6KDephos" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="_kS6KPhos_kcat" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="_kS6KPhos_km" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="_kTSC2Dephos" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="_kTSC2Phos_kcat" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="_kTSC2Phos_km" COPASIkey="ModelValue_18"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_0">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_4">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_12">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_16">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_34">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_40">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-06-05T11:53:11Z</dcterms:W3CDTF>
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
