<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:249acb2d-9b26-41a4-8655-23aafe76a717(samples.mpscore.build)">
  <persistence version="9" />
  <languages>
    <use id="427a473d-5177-432c-9905-bcbceb71b996" name="jetbrains.mps.build.mps.runner" version="0" />
    <use id="698a8d22-a104-47a0-ba8d-10e3ec237f13" name="jetbrains.mps.build.workflow" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="9f846aef-4e4a-4a84-828e-7e83fe2697f2" name="jetbrains.mps.build.mps.testManifest" version="0" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="1" />
  </languages>
  <imports>
    <import index="zqd8" ref="r:4f157831-48e7-4c8f-a144-b5bbd1be1539(jetbrains.mps.typechecking.build)" />
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests">
      <concept id="4560297596904469355" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModuleGroup" flags="ng" index="22LTRF">
        <reference id="4560297596904469356" name="group" index="22LTRG" />
      </concept>
      <concept id="4560297596904469357" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModules" flags="nn" index="22LTRH">
        <child id="4560297596904469360" name="modules" index="22LTRK" />
        <child id="6593674873639474544" name="options" index="24cAkG" />
      </concept>
      <concept id="6593674873639474400" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModules_Options" flags="ng" index="24cAiW">
        <child id="6593674873639478221" name="haltonfailure" index="24c_eh" />
      </concept>
      <concept id="4005526075820600484" name="jetbrains.mps.build.mps.tests.structure.BuildModuleTestsPlugin" flags="ng" index="1gjT0q" />
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="3542413272732620719" name="aspects" index="1hWBAP" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA">
        <property id="269707337715731330" name="sourcesKind" index="aoJFB" />
      </concept>
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="5nRGIxgpOuU">
    <property role="2DA0ip" value="../../" />
    <property role="TrG5h" value="mpscore" />
    <node concept="398rNT" id="7Ant4WkHLn3" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="7Ant4WkHLn4" role="398pKh">
        <node concept="2Ry0Ak" id="69UmpDmJW1O" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="69UmpDmJW1T" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="69UmpDmJW1Y" role="2Ry0An">
              <property role="2Ry0Am" value="MPS_HOME" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5VQ8Sex_oaS" role="1l3spd">
      <property role="TrG5h" value="coderules_art" />
      <node concept="55IIr" id="5VQ8Sex_odz" role="398pKh">
        <node concept="2Ry0Ak" id="5VQ8Sex_odA" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="5VQ8Sex_oep" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="5VQ8Sex_oeY" role="2Ry0An">
              <property role="2Ry0Am" value="build" />
              <node concept="2Ry0Ak" id="5VQ8Sex_og3" role="2Ry0An">
                <property role="2Ry0Am" value="artifacts" />
                <node concept="2Ry0Ak" id="5CiHmuT4vvj" role="2Ry0An">
                  <property role="2Ry0Am" value="coderules" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="46o4wsH3mv_" role="1l3spd">
      <property role="TrG5h" value="mps.macro.mpscore_home" />
      <node concept="55IIr" id="46o4wsH3mGg" role="398pKh" />
    </node>
    <node concept="10PD9b" id="1BDNG5xBZhR" role="10PD9s" />
    <node concept="3b7kt6" id="1BDNG5xBZhW" role="10PD9s" />
    <node concept="1gjT0q" id="1BDNG5xBZi4" role="10PD9s" />
    <node concept="55IIr" id="5nRGIxgpOuV" role="auvoZ" />
    <node concept="1l3spV" id="5nRGIxgpOuW" role="1l3spN">
      <node concept="398223" id="69UmpDmJWbU" role="39821P">
        <node concept="3_J27D" id="69UmpDmJWbV" role="Nbhlr">
          <node concept="3Mxwew" id="69UmpDmJWce" role="3MwsjC">
            <property role="3MwjfP" value="deploy" />
          </node>
        </node>
        <node concept="L2wRC" id="69UmpDmJWcg" role="39821P">
          <ref role="L2wRA" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
        </node>
        <node concept="L2wRC" id="69UmpDmJWcM" role="39821P">
          <ref role="L2wRA" node="69UmpDmJW8I" resolve="jetbrains.mps.baseLanguageExt.test" />
        </node>
        <node concept="L2wRC" id="69UmpDmJWdl" role="39821P">
          <ref role="L2wRA" node="69UmpDmJW3w" resolve="typechecking.samples.baseLanguage" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="7Ant4WkHLmd" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7Ant4WkHLme" role="2JcizS">
        <ref role="398BVh" node="7Ant4WkHLn3" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="69UmpDmJQIZ" role="1l3spa">
      <ref role="1l3spb" to="zqd8:1BDNG5xBZgg" resolve="coderules" />
      <node concept="398BVA" id="5VQ8Sex_oug" role="2JcizS">
        <ref role="398BVh" node="5VQ8Sex_oaS" resolve="coderules_art" />
      </node>
    </node>
    <node concept="2G$12M" id="69UmpDmJW20" role="3989C9">
      <property role="TrG5h" value="baseLanguageExt" />
      <node concept="1E1JtD" id="69UmpDmJW26" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguageExt" />
        <property role="3LESm3" value="0fda14cc-a416-4c81-869a-2175d8b3325d" />
        <node concept="55IIr" id="69UmpDmJW29" role="3LF7KH">
          <node concept="2Ry0Ak" id="69UmpDmJW2f" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="69UmpDmJW2k" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt" />
              <node concept="2Ry0Ak" id="69UmpDmJW2p" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2r" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2s" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxee" resolve="jetbrains.mps.lang.coderules.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2t" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2u" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2v" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2w" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2x" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2y" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2z" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2$" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUx9d" resolve="jetbrains.mps.lang.coderules.template" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2_" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2A" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:78H58oeeGcw" resolve="jetbrains.mps.controlflow" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2B" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW2C" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:65DJywFj0Fi" resolve="jetbrains.mps.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW2D" role="3bR37C">
          <node concept="1Busua" id="69UmpDmJW2E" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="70Wv0dJlji0" role="3bR37C">
          <node concept="3bR9La" id="70Wv0dJlji1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="1EFtv_BLZ04" role="3bR37C">
          <node concept="3bR9La" id="1EFtv_BLZ05" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lc2" resolve="jetbrains.mps.lang.typesystem" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="69UmpDmJW8I" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="jetbrains.mps.baseLanguageExt.test" />
        <property role="3LESm3" value="e44e7802-2e40-482b-9b1c-6d42660a6a11" />
        <property role="aoJFB" value="sources and tests" />
        <node concept="55IIr" id="69UmpDmJW8L" role="3LF7KH">
          <node concept="2Ry0Ak" id="69UmpDmJW9Q" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="69UmpDmJWaj" role="2Ry0An">
              <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt.test" />
              <node concept="2Ry0Ak" id="69UmpDmJWaK" role="2Ry0An">
                <property role="2Ry0Am" value="jetbrains.mps.baseLanguageExt.test.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWb2" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWb3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWb4" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWb5" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUxoR" resolve="jetbrains.mps.logic.reactor" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWb6" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWb7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWb8" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWb9" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7BVjoXzUx$V" resolve="jetbrains.mps.logic.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWba" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWbb" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KZ0" resolve="jetbrains.mps.baseLanguageInternal" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWbc" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWbd" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:7Ant4WkHLpd" resolve="jetbrains.mps.logic.test" />
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJWbe" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJWbf" role="1SiIV1">
            <ref role="3bR37D" node="69UmpDmJW26" resolve="jetbrains.mps.baseLanguageExt" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="69UmpDmJW3w" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="typechecking.samples.baseLanguage" />
        <property role="3LESm3" value="3ddddf69-9ff0-426b-9365-51ae7356fb82" />
        <property role="aoJFB" value="sources and tests" />
        <node concept="55IIr" id="69UmpDmJW3z" role="3LF7KH">
          <node concept="2Ry0Ak" id="69UmpDmJW46" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="69UmpDmJW4j" role="2Ry0An">
              <property role="2Ry0Am" value="typechecking.samples.baseLanguage" />
              <node concept="2Ry0Ak" id="58VeaO3BgQU" role="2Ry0An">
                <property role="2Ry0Am" value="typechecking.samples.baseLanguage.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="69UmpDmJW4E" role="3bR37C">
          <node concept="3bR9La" id="69UmpDmJW4F" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="58VeaO3BgR$" role="3bR37C">
          <node concept="3bR9La" id="58VeaO3BgR_" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="58VeaO3BgRA" role="3bR37C">
          <node concept="3bR9La" id="58VeaO3BgRB" role="1SiIV1">
            <ref role="3bR37D" to="zqd8:65DJywFj0Fi" resolve="jetbrains.mps.typechecking" />
          </node>
        </node>
        <node concept="1SiIV0" id="70Wv0dJljii" role="3bR37C">
          <node concept="3bR9La" id="70Wv0dJljij" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
      </node>
    </node>
    <node concept="22LTRH" id="69UmpDmJWeu" role="1hWBAP">
      <property role="TrG5h" value="testconfig" />
      <node concept="22LTRF" id="69UmpDmJWgM" role="22LTRK">
        <ref role="22LTRG" node="69UmpDmJW20" resolve="baseLanguageExt" />
      </node>
      <node concept="24cAiW" id="1GKPrS22Kix" role="24cAkG">
        <node concept="NbPM2" id="5NV6AIIsBBg" role="24c_eh">
          <node concept="3Mxwew" id="5NV6AIIsBBf" role="3MwsjC">
            <property role="3MwjfP" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

