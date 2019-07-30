<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="25" versionDevel="207" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_6">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
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
    <Function key="Function_51" name="Function for R1f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_51">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kIRS1Act*IRS1*Insulin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="IRS1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_323" name="Insulin" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="kIRS1Act" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for R1i" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_52">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kIRS1Phos*IRS1a*pS6K
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="IRS1a" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_331" name="kIRS1Phos" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="pS6K" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for R2f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_53">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kPI3KPhos*PI3K*IRS1a
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_338" name="IRS1a" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_339" name="PI3K" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_340" name="kPI3KPhos" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for R6f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_54">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kAktPhos*Akt_PIP3*PDK1_PIP3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_356" name="Akt_PIP3" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_357" name="PDK1_PIP3" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_358" name="kAktPhos" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for R6i" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_55">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kAktBindMK*Akt*MK2206
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_365" name="Akt" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_366" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_367" name="MK2206" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_368" name="kAktBindMK" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for R7f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_56">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kTSC2Phos*TSC2*pAkt
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_363" name="TSC2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_373" name="kTSC2Phos" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="pAkt" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for R8f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_57">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kRhebPhos*RhebGDP*AA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_380" name="AA" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="RhebGDP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_382" name="kRhebPhos" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for R8b" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_58">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kRhebDephos*RhebGTP*TSC2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_386" name="RhebGTP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_387" name="TSC2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_388" name="kRhebDephos" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for R9b" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_59">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kmTORC1UnbindPras40*mTORC1_Pras40cyt*pAkt
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="kmTORC1UnbindPras40" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="mTORC1_Pras40cyt" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_396" name="pAkt" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for R11f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_60">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kRAGPhos*RAG_GDP*AA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_404" name="AA" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="RAG_GDP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_406" name="kRAGPhos" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for R12f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_61">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kmTORC1Phos*mTORC1lys*RhebGTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_413" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_414" name="RhebGTP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_415" name="kmTORC1Phos" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="mTORC1lys" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for R12b" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_62">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kmTORC1Dephos*pmTORC1*AMPK
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_421" name="AMPK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_422" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_423" name="kmTORC1Dephos" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_424" name="pmTORC1" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for R13fi" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_63">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kmTORC1BindRapa*mTORC1cyt*Rapamycin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_429" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_430" name="Rapamycin" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_431" name="kmTORC1BindRapa" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_432" name="mTORC1cyt" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for R13bi" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_64">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kmTORC1UnbindRapa*mTORC1i
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_412" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_437" name="kmTORC1UnbindRapa" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_438" name="mTORC1i" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for R13fii" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_65">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kmTORC1BindRapa*mTORC1lys*Rapamycin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_443" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_444" name="Rapamycin" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_445" name="kmTORC1BindRapa" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="mTORC1lys" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for R13bii" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_66">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kmTORC1UnbindRapa*mTORC1ii
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_403" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_451" name="kmTORC1UnbindRapa" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_452" name="mTORC1ii" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for R13fiii" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_67">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kmTORC1BindRapa*pmTORC1*Rapamycin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_457" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_458" name="Rapamycin" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_459" name="kmTORC1BindRapa" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="pmTORC1" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for R13biii" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_68">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kmTORC1UnbindRapa*mTORC1iii
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_442" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_465" name="kmTORC1UnbindRapa" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_466" name="mTORC1iii" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for R13fiv" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_69">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kmTORC1BindRapa*mTORC1_Pras40cyt*Rapamycin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_471" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_472" name="Rapamycin" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_473" name="kmTORC1BindRapa" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_474" name="mTORC1_Pras40cyt" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for R13biv" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_70">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kmTORC1UnbindRapa*mTORC1iv
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_456" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_479" name="kmTORC1UnbindRapa" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_480" name="mTORC1iv" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for R14f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_71">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*k4EBP1Phos*FourEBP1*pmTORC1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_485" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_486" name="FourEBP1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_487" name="k4EBP1Phos" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_488" name="pmTORC1" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for R15f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_72">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kS6KPhos*S6K*pmTORC1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_495" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_496" name="S6K" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_497" name="kS6KPhos" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_498" name="pmTORC1" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for R16fi" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_73">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kAMPKInhibPhosByAkt*AMPK*pAkt
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_504" name="AMPK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_505" name="kAMPKInhibPhosByAkt" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_506" name="pAkt" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for R16fii" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_74">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kAMPKInhibPhosByS6K*AMPK*pS6K
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_510" name="AMPK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_511" name="kAMPKInhibPhosByS6K" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_512" name="pS6K" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for R17f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_75">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kAMPKActPhos*AMPK*CaMKK2a
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_518" name="AMPK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_519" name="CaMKK2a" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_520" name="kAMPKActPhos" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for R18f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_76">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kCaMKK2Act*CaMKK2*Ca2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_526" name="Ca2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_527" name="CaMKK2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_528" name="kCaMKK2Act" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function for R19f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_77">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kLKB1Act*LKB1*AA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_534" name="AA" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_535" name="LKB1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_536" name="kLKB1Act" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for R20f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_78">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kTKRBindEGF*RTK*EGF
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_542" name="EGF" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_543" name="RTK" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_544" name="kTKRBindEGF" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for R22f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_79">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kSOSPhos*Sos*pErk
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_555" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_556" name="Sos" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_557" name="kSOSPhos" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_558" name="pErk" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for R22b" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_80">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kSOSDephos*pSos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_551" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_563" name="kSOSDephos" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_564" name="pSos" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function for R23f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_81">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kRasLoad*RasGDP*pRTKa
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_569" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_570" name="RasGDP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_571" name="kRasLoad" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_572" name="pRTKa" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for R23b" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_82">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kRasUnload*RasGTP/default_compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_577" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_578" name="RasGTP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_579" name="default_compartment" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_580" name="kRasUnload" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for R24f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_83">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kRafPhos*Raf*RasGTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_585" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_586" name="Raf" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_587" name="RasGTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_588" name="kRafPhos" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Function for R25f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_84">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kMekPhos*Mek*pRaf
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_594" name="Mek" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_595" name="kMekPhos" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_596" name="pRaf" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Function for R25b" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_85">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kMekDephos*pMek*pErk
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_600" name="kMekDephos" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_601" name="pErk" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_602" name="pMek" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Function for R26f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_86">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kErkPhos*Erk*pMek
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_606" name="Erk" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_607" name="kErkPhos" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_608" name="pMek" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Function for R27f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_87">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kMekBindAzd*Mek*AZD
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_614" name="AZD" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_615" name="Mek" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_616" name="kMekBindAzd" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Function for R28f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_88">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Cell*kPLCPhos*PLCeps*RasGTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_623" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_624" name="PLCeps" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_625" name="RasGTP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_626" name="kPLCPhos" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Function for R29f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_89">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kPIP2Break*PIP2*pPLCeps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_632" name="PIP2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_633" name="kPIP2Break" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_634" name="pPLCeps" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="Function for R31f" type="UserDefined" reversible="false">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_90">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kCa2In*IpRa
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_643" name="IpRa" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_644" name="kCa2In" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="ComplexPI3KModel" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m&#178;" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
      <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
        <rdf:Description rdf:about="#Model_1">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
        </rdf:Description>
      </rdf:RDF>
    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="default_compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Compartment_0">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
              <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000410"/>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="Cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Compartment_1">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="IRS1" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_0">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="IRS1a" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_1">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="pIRS1" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_2">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="PI3K" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_3">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="pPI3K" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_4">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="PIP2" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_5">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="PIP3" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_6">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="PDK1" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_7">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="PDK1_PIP3" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_8">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Akt" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_9">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Akt_PIP3" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_10">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="pAkt" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_11">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Akti" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_12">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="TSC2" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_13">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="pTSC2" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_14">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="RhebGDP" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.023346218358e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_15">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="RhebGTP" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_16">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="ppPras40" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_17">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="mTORC1cyt" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="1.204428358e+21">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_18">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="mTORC1_Pras40cyt" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_19">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="mTORC1lys" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_20">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="RAG_GDP" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_21">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="RAG_GTP" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_22">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="mTORC1i" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_23">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="mTORC1ii" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_24">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="mTORC1iii" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_25">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="mTORC1iv" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_26">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="FourEBP1" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_27">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="pFourEBP1" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_28">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="S6K" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_29">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="pS6K" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_30">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="AMPK" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_31">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="pAMPKi" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_32">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="pAMPK" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_33">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="CaMKK2a" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_34">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="CaMKK2" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_35">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="LKB1a" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_36">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="LKB1" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_37">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="RTK" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_38">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="pRTK" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_39">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="Sos" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_40">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="pRTKa" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_41">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="Raf" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_42">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="pRaf" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_43">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="Mek" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_44">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="pMek" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_45">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="Erk" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_46">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="pErk" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_47">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="Meki" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_48">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="PLCeps" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_49">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="pPLCeps" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_50">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="IP3" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_51">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="DAG" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_52">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="IpR" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="6.022744004178999e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_53">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="IpRa" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="5.419927611e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_54">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="Ca2" simulationType="reactions" compartment="Compartment_1" addNoise="false" particle_numbers="5.419927611e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_55">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="Rapamycin" simulationType="fixed" compartment="Compartment_0" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_56">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="MK2206" simulationType="fixed" compartment="Compartment_0" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_57">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="RasGDP" simulationType="reactions" compartment="Compartment_0" addNoise="false" particle_numbers="6.023346218358e+24">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_58">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="RasGTP" simulationType="reactions" compartment="Compartment_0" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_59">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="pmTORC1" simulationType="reactions" compartment="Compartment_0" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_60">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="pSos" simulationType="reactions" compartment="Compartment_0" addNoise="false" particle_numbers="6.02214179e+20">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_61">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Insulin" simulationType="fixed" addNoise="false" initial_value="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_0">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="AA" simulationType="fixed" addNoise="false" initial_value="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_1">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="AZD" simulationType="fixed" addNoise="false" initial_value="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_2">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="EGF" simulationType="fixed" addNoise="false" initial_value="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_3">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="kIRS1In" simulationType="fixed" addNoise="false" initial_value="1.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_4">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="kIRS1Out" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_5">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="kIRS1Act" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_6">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="kIRS1Inact" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_7">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="kIRS1Phos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_8">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="kIRS1Dephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_9">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="kPI3KPhos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_10">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="kPI3KDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_11">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="kPIPPhos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_12">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="kPIPDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_13">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="kPDK1BindPIP3" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_14">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="kPDK1UnbindPIP3" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_15">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="kAktBindPIP3" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_16">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="kAktUnbindPIP3" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_17">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="kAktPhos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_18">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="kAktDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_19">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="kAktBindMK" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_20">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="kTSC2Phos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_21">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="kTSC2Dephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_22">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="kRhebPhos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_23">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="kRhebDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_24">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="kmTORC1BindPras40" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_25">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="kmTORC1UnbindPras40" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_26">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="kmTORC1CytToLys" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_27">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="kmTORC1LysToCyt" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_28">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="kRAGPhos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_29">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="kRAGDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_30">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="kmTORC1Phos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_31">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="kmTORC1Dephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_32">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="kmTORC1BindRapa" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_33">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="kmTORC1UnbindRapa" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_34">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="k4EBP1Phos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_35">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="k4EBP1Dephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_36">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="kS6KPhos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_37">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="kS6KDehos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_38">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="kAMPKInhibPhosByAkt" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_39">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="kAMPKInhibPhosByS6K" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_40">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="kAMPKDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_41">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="kAMPKActPhos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_42">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="kAMPKActDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_43">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="kCaMKK2Act" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_44">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="kCaMKK2Inact" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_45">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="kLKB1Act" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_46">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="kLKB1Inact" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_47">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="kTKRBindEGF" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_48">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="kTKRUnbindEGF" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_49">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="kTKRBindSOS" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_50">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="kTKRUnbindSOS" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_51">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="kSOSPhos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_52">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="kSOSDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_53">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="kRasLoad" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_54">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="kRasUnload" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_55">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="kRafPhos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_56">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="kRafDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_57">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="kMekPhos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_58">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="kMekDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_59">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="kErkPhos" simulationType="fixed" addNoise="false" initial_value="0.01">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_60">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="kErkDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_61">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="kMekBindAzd" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_62">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="kMekUnbindAzd" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_63">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="kPLCPhos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_64">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="kPLCDephos" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_65">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="kPIP2Break" simulationType="fixed" addNoise="false" initial_value="0.001">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_66">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="kPIP2form" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_67">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="kIP3BindIpR" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_68">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="kIP3UnbindIpR" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_69">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="kCa2In" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_70">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="kCa2Out" simulationType="fixed" addNoise="false" initial_value="0.1">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelValue_71">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R1In" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_0">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5013" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R2Out" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_1">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5012" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R1f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_2">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_5011" name="Insulin" value="0"/>
          <Constant key="Parameter_5010" name="kIRS1Act" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R1b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_3">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_5009" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="R1i" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_4">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5008" name="kIRS1Phos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="R1Out2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_5">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5007" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="R2f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_6">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="kPI3KPhos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="R2b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_7">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="R3f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_8">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5004" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="R4f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_9">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="R4b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_10">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5002" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="R5f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_11">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="R5b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_12">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="R6f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_13">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="kAktPhos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="R6b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_14">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_4998" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="R6i" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_15">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="kAktBindMK" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="R7f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_16">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="kTSC2Phos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="R7b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_17">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_4995" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
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
      <Reaction key="Reaction_18" name="R8f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_18">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="AA" value="0"/>
          <Constant key="Parameter_4993" name="kRhebPhos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="R8b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_19">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4992" name="kRhebDephos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="R9f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_20">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="R9b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_21">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="kmTORC1UnbindPras40" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="R10f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_22">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4989" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="R10b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_23">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="R11f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_24">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4987" name="AA" value="0"/>
          <Constant key="Parameter_4986" name="kRAGPhos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="R11b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_25">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4985" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="R12f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_26">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4984" name="kmTORC1Phos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="R12b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_27">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4983" name="kmTORC1Dephos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="R13fi" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_28">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4982" name="kmTORC1BindRapa" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="R13bi" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_29">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4981" name="kmTORC1UnbindRapa" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="R13fii" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_30">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4980" name="kmTORC1BindRapa" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="R13bii" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_31">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4979" name="kmTORC1UnbindRapa" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="R13fiii" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_32">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4978" name="kmTORC1BindRapa" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="R13biii" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_33">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4977" name="kmTORC1UnbindRapa" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="R13fiv" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_34">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4976" name="kmTORC1BindRapa" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="R13biv" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_35">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4975" name="kmTORC1UnbindRapa" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="R14f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_36">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4974" name="k4EBP1Phos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="R14b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_37">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4973" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="R15f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_38">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4972" name="kS6KPhos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="R15b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_39">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4971" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="R16fi" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_40">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4970" name="kAMPKInhibPhosByAkt" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="R16fii" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_41">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4969" name="kAMPKInhibPhosByS6K" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="R16b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_42">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4968" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="R17f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_43">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4967" name="kAMPKActPhos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="R17b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_44">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4966" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="R18f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_45">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4965" name="kCaMKK2Act" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="R18b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_46">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4964" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="R19f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_47">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4963" name="AA" value="0"/>
          <Constant key="Parameter_4962" name="kLKB1Act" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="R19b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_48">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4961" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="R20f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_49">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4960" name="EGF" value="0"/>
          <Constant key="Parameter_4959" name="kTKRBindEGF" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="R20b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_50">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4958" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="R21f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_51">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4957" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_39"/>
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="R21b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_52">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4956" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="R22f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_53">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4955" name="kSOSPhos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="R22b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_54">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4954" name="kSOSDephos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="R23f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_55">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4953" name="kRasLoad" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="R23b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_56">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4952" name="kRasUnload" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="R24f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_57">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4951" name="kRafPhos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="R24b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_58">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4950" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="R25f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_59">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4949" name="kMekPhos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="R25b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_60">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4948" name="kMekDephos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_85" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="R26f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_61">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4947" name="kErkPhos" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_86" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="R26b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_62">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4946" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="R27f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_63">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4945" name="AZD" value="0"/>
          <Constant key="Parameter_4944" name="kMekBindAzd" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_87" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="R27b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_64">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4943" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="R28f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_65">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4942" name="kPLCPhos" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_88" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="R28b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_66">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4941" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="R29f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_67">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4940" name="kPIP2Break" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_89" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="R29b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_68">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4939" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_51"/>
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="R30f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_69">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4938" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_51"/>
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="R30b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_70">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4937" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="R31f" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_71">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4936" name="kCa2In" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_90" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_643">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_644">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="R31b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_72">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4935" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_55"/>
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
                  <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1a]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pIRS1]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[PI3K]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pPI3K]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[PIP2]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[PIP3]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[PDK1]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[PDK1_PIP3]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Akt]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Akt_PIP3]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pAkt]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Akti]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pTSC2]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[RhebGDP]" value="6.0233462183580002e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[RhebGTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[ppPras40]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1cyt]" value="1.2044283580000001e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1_Pras40cyt]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1lys]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[RAG_GDP]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[RAG_GTP]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1i]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1ii]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1iii]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1iv]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pFourEBP1]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[S6K]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pS6K]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[AMPK]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pAMPKi]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pAMPK]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[CaMKK2a]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[CaMKK2]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[LKB1a]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[LKB1]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[RTK]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pRTK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Sos]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pRTKa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Raf]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pRaf]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Mek]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pMek]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Erk]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pErk]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Meki]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[PLCeps]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pPLCeps]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[IP3]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[DAG]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[IpR]" value="6.0227440041789994e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[IpRa]" value="5.4199276109999997e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Ca2]" value="5.4199276109999997e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment],Vector=Metabolites[Rapamycin]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment],Vector=Metabolites[MK2206]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment],Vector=Metabolites[RasGDP]" value="6.0233462183580002e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment],Vector=Metabolites[RasGTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment],Vector=Metabolites[pmTORC1]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment],Vector=Metabolites[pSos]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[Insulin]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[AA]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[AZD]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[EGF]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1In]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Out]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Act]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Inact]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Phos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Dephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPI3KPhos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPI3KDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPIPPhos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPIPDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPDK1BindPIP3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPDK1UnbindPIP3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktBindPIP3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktUnbindPIP3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktPhos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktBindMK]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kTSC2Phos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kTSC2Dephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRhebPhos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRhebDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1BindPras40]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1UnbindPras40]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1CytToLys]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1LysToCyt]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRAGPhos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRAGDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1Phos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1Dephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1BindRapa]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1UnbindRapa]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[k4EBP1Phos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[k4EBP1Dephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kS6KPhos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kS6KDehos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKInhibPhosByAkt]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKInhibPhosByS6K]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKActPhos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKActDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kCaMKK2Act]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kCaMKK2Inact]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kLKB1Act]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kLKB1Inact]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kTKRBindEGF]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kTKRUnbindEGF]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kTKRBindSOS]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kTKRUnbindSOS]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kSOSPhos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kSOSDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRasLoad]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRasUnload]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRafPhos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRafDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kMekPhos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kMekDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kErkPhos]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kErkDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kMekBindAzd]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kMekUnbindAzd]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPLCPhos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPLCDephos]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPIP2Break]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPIP2form]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIP3BindIpR]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIP3UnbindIpR]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kCa2In]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kCa2Out]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R1In]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R1In],ParameterGroup=Parameters,Parameter=v" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1In],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R2Out]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R2Out],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Out],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R1f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R1f],ParameterGroup=Parameters,Parameter=Insulin" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[Insulin],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R1f],ParameterGroup=Parameters,Parameter=kIRS1Act" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Act],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R1b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R1b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Inact],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R1i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R1i],ParameterGroup=Parameters,Parameter=kIRS1Phos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Phos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R1Out2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R1Out2],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Dephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R2f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R2f],ParameterGroup=Parameters,Parameter=kPI3KPhos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kPI3KPhos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R2b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R2b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kPI3KDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R3f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R3f],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kPIPDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R4f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R4f],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kPDK1BindPIP3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R4b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R4b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kPDK1UnbindPIP3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R5f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R5f],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktBindPIP3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R5b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R5b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktUnbindPIP3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R6f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R6f],ParameterGroup=Parameters,Parameter=kAktPhos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktPhos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R6b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R6b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R6i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R6i],ParameterGroup=Parameters,Parameter=kAktBindMK" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktBindMK],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R7f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R7f],ParameterGroup=Parameters,Parameter=kTSC2Phos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kTSC2Phos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R7b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R7b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kTSC2Dephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R8f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R8f],ParameterGroup=Parameters,Parameter=AA" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[AA],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R8f],ParameterGroup=Parameters,Parameter=kRhebPhos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kRhebPhos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R8b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R8b],ParameterGroup=Parameters,Parameter=kRhebDephos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kRhebDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R9f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R9f],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1BindPras40],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R9b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R9b],ParameterGroup=Parameters,Parameter=kmTORC1UnbindPras40" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1UnbindPras40],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R10f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R10f],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1CytToLys],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R10b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R10b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1LysToCyt],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R11f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R11f],ParameterGroup=Parameters,Parameter=AA" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[AA],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R11f],ParameterGroup=Parameters,Parameter=kRAGPhos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kRAGPhos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R11b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R11b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kRAGDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R12f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R12f],ParameterGroup=Parameters,Parameter=kmTORC1Phos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1Phos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R12b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R12b],ParameterGroup=Parameters,Parameter=kmTORC1Dephos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1Dephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13fi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13fi],ParameterGroup=Parameters,Parameter=kmTORC1BindRapa" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1BindRapa],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13bi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13bi],ParameterGroup=Parameters,Parameter=kmTORC1UnbindRapa" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1UnbindRapa],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13fii]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13fii],ParameterGroup=Parameters,Parameter=kmTORC1BindRapa" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1BindRapa],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13bii]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13bii],ParameterGroup=Parameters,Parameter=kmTORC1UnbindRapa" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1UnbindRapa],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13fiii]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13fiii],ParameterGroup=Parameters,Parameter=kmTORC1BindRapa" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1BindRapa],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13biii]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13biii],ParameterGroup=Parameters,Parameter=kmTORC1UnbindRapa" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1UnbindRapa],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13fiv]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13fiv],ParameterGroup=Parameters,Parameter=kmTORC1BindRapa" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1BindRapa],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13biv]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R13biv],ParameterGroup=Parameters,Parameter=kmTORC1UnbindRapa" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1UnbindRapa],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R14f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R14f],ParameterGroup=Parameters,Parameter=k4EBP1Phos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[k4EBP1Phos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R14b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R14b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[k4EBP1Dephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R15f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R15f],ParameterGroup=Parameters,Parameter=kS6KPhos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kS6KPhos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R15b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R15b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kS6KDehos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R16fi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R16fi],ParameterGroup=Parameters,Parameter=kAMPKInhibPhosByAkt" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKInhibPhosByAkt],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R16fii]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R16fii],ParameterGroup=Parameters,Parameter=kAMPKInhibPhosByS6K" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKInhibPhosByS6K],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R16b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R16b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R17f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R17f],ParameterGroup=Parameters,Parameter=kAMPKActPhos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKActPhos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R17b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R17b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKActDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R18f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R18f],ParameterGroup=Parameters,Parameter=kCaMKK2Act" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kCaMKK2Act],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R18b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R18b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kCaMKK2Inact],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R19f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R19f],ParameterGroup=Parameters,Parameter=AA" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[AA],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R19f],ParameterGroup=Parameters,Parameter=kLKB1Act" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kLKB1Act],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R19b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R19b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kLKB1Inact],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R20f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R20f],ParameterGroup=Parameters,Parameter=EGF" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[EGF],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R20f],ParameterGroup=Parameters,Parameter=kTKRBindEGF" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kTKRBindEGF],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R20b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R20b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kTKRUnbindEGF],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R21f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R21f],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kTKRBindSOS],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R21b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R21b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kTKRUnbindSOS],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R22f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R22f],ParameterGroup=Parameters,Parameter=kSOSPhos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kSOSPhos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R22b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R22b],ParameterGroup=Parameters,Parameter=kSOSDephos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kSOSDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R23f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R23f],ParameterGroup=Parameters,Parameter=kRasLoad" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kRasLoad],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R23b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R23b],ParameterGroup=Parameters,Parameter=kRasUnload" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kRasUnload],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R24f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R24f],ParameterGroup=Parameters,Parameter=kRafPhos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kRafPhos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R24b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R24b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kRafDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R25f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R25f],ParameterGroup=Parameters,Parameter=kMekPhos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kMekPhos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R25b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R25b],ParameterGroup=Parameters,Parameter=kMekDephos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kMekDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R26f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R26f],ParameterGroup=Parameters,Parameter=kErkPhos" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kErkPhos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R26b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R26b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kErkDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R27f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R27f],ParameterGroup=Parameters,Parameter=AZD" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[AZD],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R27f],ParameterGroup=Parameters,Parameter=kMekBindAzd" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kMekBindAzd],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R27b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R27b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kMekUnbindAzd],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R28f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R28f],ParameterGroup=Parameters,Parameter=kPLCPhos" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kPLCPhos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R28b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R28b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kPLCDephos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R29f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R29f],ParameterGroup=Parameters,Parameter=kPIP2Break" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kPIP2Break],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R29b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R29b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kPIP2form],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R30f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R30f],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kIP3BindIpR],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R30b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R30b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kIP3UnbindIpR],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R31f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R31f],ParameterGroup=Parameters,Parameter=kCa2In" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kCa2In],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R31b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=ComplexPI3KModel,Vector=Reactions[R31b],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=ComplexPI3KModel,Vector=Values[kCa2Out],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
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
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1.2044283580000001e+21 6.0221417900000005e+20 6.0221417900000005e+20 6.0227440041789994e+24 6.0227440041789994e+24 0 6.0227440041789994e+24 6.0221417900000005e+20 6.0221417900000005e+20 6.0227440041789994e+24 6.0221417900000005e+20 6.0233462183580002e+24 6.0227440041789994e+24 6.0227440041789994e+24 6.0233462183580002e+24 6.0227440041789994e+24 6.0221417900000005e+20 6.0227440041789994e+24 6.0227440041789994e+24 0 6.0221417900000005e+20 6.0221417900000005e+20 6.0227440041789994e+24 6.0227440041789994e+24 5.4199276109999997e+20 6.0227440041789994e+24 6.0227440041789994e+24 6.0227440041789994e+24 6.0221417900000005e+20 6.0221417900000005e+20 0 6.0221417900000005e+20 0 6.0221417900000005e+20 6.0227440041789994e+24 0 6.0221417900000005e+20 0 0 0 6.0221417900000005e+20 0 6.0221417900000005e+20 6.0221417900000005e+20 6.0221417900000005e+20 6.0227440041789994e+24 6.0227440041789994e+24 6.0221417900000005e+20 6.0221417900000005e+20 6.0227440041789994e+24 0 0 6.0227440041789994e+24 0 6.0221417900000005e+20 6.0221417900000005e+20 6.0227440041789994e+24 5.4199276109999997e+20 6.0221417900000005e+20 0 0 0 1 1 0 0 0 0 1 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.01 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 
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
    <Task key="Task_100" name="Time-Course" scheduled="true" type="timeCourse" update_model="false">
      <Report append="0" confirmOverwrite="0" reference="Report_30" target="/home/ncw135/Documents/MesiSTRAT2/BreastCancerModel/models/TimeCourseData.txt"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="151"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="150"/>
        <Parameter name="TimeSeriesRequested" type="float" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
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
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
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
    <Report key="Report_30" name="Time-Course" precision="6" separator="&#9;" taskType="Time-Course">
      <Comment/>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=ComplexPI3KModel,Reference=Time"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[IRS1a],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pIRS1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[PI3K],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pPI3K],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[PIP2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[PIP3],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[PDK1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[PDK1_PIP3],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Akt],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Akt_PIP3],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pAkt],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Akti],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[TSC2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pTSC2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[RhebGDP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[RhebGTP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[ppPras40],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1cyt],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1_Pras40cyt],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1lys],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[RAG_GDP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[RAG_GTP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1i],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1ii],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1iii],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[mTORC1iv],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[FourEBP1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pFourEBP1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[S6K],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pS6K],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[AMPK],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pAMPKi],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pAMPK],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[CaMKK2a],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[CaMKK2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[LKB1a],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[LKB1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[RTK],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pRTK],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Sos],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pRTKa],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Raf],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pRaf],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Mek],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pMek],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Erk],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pErk],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Meki],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[PLCeps],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[pPLCeps],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[IP3],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[DAG],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[IpR],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[IpRa],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[Cell],Vector=Metabolites[Ca2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment],Vector=Metabolites[Rapamycin],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment],Vector=Metabolites[MK2206],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment],Vector=Metabolites[RasGDP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment],Vector=Metabolites[RasGTP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment],Vector=Metabolites[pmTORC1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Compartments[default_compartment],Vector=Metabolites[pSos],Reference=Concentration"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[Insulin],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[AA],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[AZD],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[EGF],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1In],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Out],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Act],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Inact],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Phos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIRS1Dephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPI3KPhos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPI3KDephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPIPPhos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPIPDephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPDK1BindPIP3],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPDK1UnbindPIP3],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktBindPIP3],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktUnbindPIP3],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktPhos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktDephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAktBindMK],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kTSC2Phos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kTSC2Dephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRhebPhos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRhebDephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1BindPras40],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1UnbindPras40],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1CytToLys],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1LysToCyt],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRAGPhos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRAGDephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1Phos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1Dephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1BindRapa],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kmTORC1UnbindRapa],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[k4EBP1Phos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[k4EBP1Dephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kS6KPhos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kS6KDehos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKInhibPhosByAkt],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKInhibPhosByS6K],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKDephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKActPhos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kAMPKActDephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kCaMKK2Act],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kCaMKK2Inact],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kLKB1Act],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kLKB1Inact],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kTKRBindEGF],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kTKRUnbindEGF],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kTKRBindSOS],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kTKRUnbindSOS],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kSOSPhos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kSOSDephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRasLoad],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRasUnload],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRafPhos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kRafDephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kMekPhos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kMekDephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kErkPhos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kErkDephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kMekBindAzd],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kMekUnbindAzd],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPLCPhos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPLCDephos],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPIP2Break],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kPIP2form],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIP3BindIpR],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kIP3UnbindIpR],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kCa2In],Reference=Value"/>
        <Object cn="CN=Root,Model=ComplexPI3KModel,Vector=Values[kCa2Out],Reference=Value"/>
      </Table>
    </Report>
  </ListOfReports>
  <SBMLReference file="copasi_model.sbml">
    <SBMLMap SBMLid="AA" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="AMPK" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="AZD" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Akt" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="Akt_PIP3" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="Akti" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="Ca2" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="CaMKK2" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="CaMKK2a" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="Cell" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="DAG" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="EGF" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="Erk" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="FourEBP1" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="IP3" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="IRS1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="IRS1a" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Insulin" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="IpR" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="IpRa" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="LKB1" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="LKB1a" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="MK2206" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="Mek" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="Meki" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="PDK1" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="PDK1_PIP3" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="PI3K" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="PIP2" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="PIP3" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="PLCeps" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="R10b" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="R10f" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="R11b" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="R11f" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="R12b" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="R12f" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="R13bi" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="R13bii" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="R13biii" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="R13biv" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="R13fi" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="R13fii" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="R13fiii" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="R13fiv" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="R14b" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="R14f" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="R15b" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="R15f" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="R16b" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="R16fi" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="R16fii" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="R17b" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="R17f" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="R18b" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="R18f" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="R19b" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="R19f" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="R1In" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="R1Out2" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="R1b" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="R1f" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="R1i" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="R20b" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="R20f" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="R21b" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="R21f" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="R22b" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="R22f" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="R23b" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="R23f" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="R24b" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="R24f" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="R25b" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="R25f" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="R26b" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="R26f" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="R27b" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="R27f" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="R28b" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="R28f" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="R29b" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="R29f" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="R2Out" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="R2b" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="R2f" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="R30b" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="R30f" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="R31b" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="R31f" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="R3f" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="R4b" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="R4f" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="R5b" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="R5f" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="R6b" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="R6f" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="R6i" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="R7b" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="R7f" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="R8b" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="R8f" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="R9b" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="R9f" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="RAG_GDP" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="RAG_GTP" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="RTK" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="Raf" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="Rapamycin" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="RasGDP" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="RasGTP" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="RhebGDP" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="RhebGTP" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="S6K" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Sos" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="TSC2" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="default_compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="k4EBP1Dephos" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="k4EBP1Phos" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="kAMPKActDephos" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="kAMPKActPhos" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="kAMPKDephos" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="kAMPKInhibPhosByAkt" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="kAMPKInhibPhosByS6K" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="kAktBindMK" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="kAktBindPIP3" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="kAktDephos" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="kAktPhos" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="kAktUnbindPIP3" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="kCa2In" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="kCa2Out" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="kCaMKK2Act" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="kCaMKK2Inact" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="kErkDephos" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="kErkPhos" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="kIP3BindIpR" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="kIP3UnbindIpR" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="kIRS1Act" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="kIRS1Dephos" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="kIRS1In" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="kIRS1Inact" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="kIRS1Out" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="kIRS1Phos" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="kLKB1Act" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="kLKB1Inact" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="kMekBindAzd" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="kMekDephos" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="kMekPhos" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="kMekUnbindAzd" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="kPDK1BindPIP3" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="kPDK1UnbindPIP3" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="kPI3KDephos" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="kPI3KPhos" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="kPIP2Break" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="kPIP2form" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="kPIPDephos" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="kPIPPhos" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="kPLCDephos" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="kPLCPhos" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="kRAGDephos" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="kRAGPhos" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="kRafDephos" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="kRafPhos" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="kRasLoad" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="kRasUnload" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="kRhebDephos" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="kRhebPhos" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="kS6KDehos" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="kS6KPhos" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="kSOSDephos" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="kSOSPhos" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="kTKRBindEGF" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="kTKRBindSOS" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="kTKRUnbindEGF" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="kTKRUnbindSOS" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="kTSC2Dephos" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="kTSC2Phos" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="kmTORC1BindPras40" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="kmTORC1BindRapa" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="kmTORC1CytToLys" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="kmTORC1Dephos" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="kmTORC1LysToCyt" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="kmTORC1Phos" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="kmTORC1UnbindPras40" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="kmTORC1UnbindRapa" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="mTORC1_Pras40cyt" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="mTORC1cyt" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="mTORC1i" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="mTORC1ii" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="mTORC1iii" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="mTORC1iv" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="mTORC1lys" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="pAMPK" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="pAMPKi" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="pAkt" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="pErk" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="pFourEBP1" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="pIRS1" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="pMek" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="pPI3K" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="pPLCeps" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="pRTK" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="pRTKa" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="pRaf" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="pS6K" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="pSos" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="pTSC2" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="pmTORC1" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="ppPras40" COPASIkey="Metabolite_17"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_0">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
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
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
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
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
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
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
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
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
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
                <dcterms:W3CDTF>2019-07-30T15:18:57Z</dcterms:W3CDTF>
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
