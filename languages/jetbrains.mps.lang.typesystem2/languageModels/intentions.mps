<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0b4fa908-1136-4415-a93b-4106c8eb77b5(jetbrains.mps.lang.typesystem2.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="0" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="hy7p" ref="r:01ee26d6-df00-4ffb-931c-1ddec5984886(jetbrains.mps.lang.typesystem2.util)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
      <concept id="1240316299033" name="jetbrains.mps.lang.intentions.structure.QueryBlock" flags="in" index="38BcoT">
        <child id="1240393479918" name="paramType" index="3ddBve" />
      </concept>
      <concept id="1240322627579" name="jetbrains.mps.lang.intentions.structure.IntentionParameter" flags="nn" index="38Zlrr" />
      <concept id="1240395258925" name="jetbrains.mps.lang.intentions.structure.ParameterizedIntentionDeclaration" flags="ig" index="3dkpOd">
        <child id="1240395532443" name="queryBlock" index="3dlsAV" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
      <concept id="767145758118872828" name="jetbrains.mps.lang.actions.structure.NF_Node_ReplaceWithNewOperation" flags="nn" index="2DeJnW" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
    </language>
  </registry>
  <node concept="2S6QgY" id="1CgWc1TyAgc">
    <property role="TrG5h" value="AddComment" />
    <property role="3GE5qa" value="comment" />
    <ref role="2ZfgGC" to="wq2x:1CgWc1Tyjkz" resolve="ICanBeCommented" />
    <node concept="2S6ZIM" id="1CgWc1TyAgd" role="2ZfVej">
      <node concept="3clFbS" id="1CgWc1TyAge" role="2VODD2">
        <node concept="3clFbF" id="1CgWc1TyBK7" role="3cqZAp">
          <node concept="Xl_RD" id="1CgWc1TyBK6" role="3clFbG">
            <property role="Xl_RC" value="Add Comment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="1CgWc1TyAgf" role="2ZfgGD">
      <node concept="3clFbS" id="1CgWc1TyAgg" role="2VODD2">
        <node concept="3clFbF" id="1CgWc1TyCcx" role="3cqZAp">
          <node concept="37vLTI" id="1CgWc1TyCPf" role="3clFbG">
            <node concept="2OqwBi" id="1CgWc1TyCdB" role="37vLTJ">
              <node concept="2Sf5sV" id="1CgWc1TyCcw" role="2Oq$k0" />
              <node concept="3CFZ6_" id="1CgWc1TyCjs" role="2OqNvi">
                <node concept="3CFYIy" id="1CgWc1TyCkq" role="3CFYIz">
                  <ref role="3CFYIx" to="wq2x:1CgWc1Tyjkw" resolve="Comment" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="17H9dI4GPaP" role="37vLTx">
              <node concept="2fJWfE" id="17H9dI4GQc3" role="2ShVmc">
                <node concept="3Tqbb2" id="17H9dI4GQc5" role="3zrR0E">
                  <ref role="ehGHo" to="wq2x:1CgWc1Tyjkw" resolve="Comment" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="1j288BfpBGP" role="2ZfVeh">
      <node concept="3clFbS" id="1j288BfpBGQ" role="2VODD2">
        <node concept="3clFbF" id="1j288BfpBVz" role="3cqZAp">
          <node concept="2OqwBi" id="1j288BfpCqk" role="3clFbG">
            <node concept="2OqwBi" id="1j288BfpBZr" role="2Oq$k0">
              <node concept="2Sf5sV" id="1j288BfpBVy" role="2Oq$k0" />
              <node concept="3CFZ6_" id="1j288BfpCfk" role="2OqNvi">
                <node concept="3CFYIy" id="1j288BfpClq" role="3CFYIz">
                  <ref role="3CFYIx" to="wq2x:1CgWc1Tyjkw" resolve="Comment" />
                </node>
              </node>
            </node>
            <node concept="3w_OXm" id="1j288BfpCLU" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="2CEQDIE0t1p">
    <property role="TrG5h" value="Ast_replaceWith_TypeTerm" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="5j4j:6$jH9oLmUCq" resolve="Ast" />
    <node concept="2S6ZIM" id="2CEQDIE0t1q" role="2ZfVej">
      <node concept="3clFbS" id="2CEQDIE0t1r" role="2VODD2">
        <node concept="3clFbF" id="2CEQDIE0Eqx" role="3cqZAp">
          <node concept="3cpWs3" id="2CEQDIE0Fhc" role="3clFbG">
            <node concept="2OqwBi" id="2CEQDIE0Ftg" role="3uHU7w">
              <node concept="38Zlrr" id="2CEQDIE0Fmp" role="2Oq$k0" />
              <node concept="3TrcHB" id="2CEQDIE0FCR" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="Xl_RD" id="2CEQDIE0Eqw" role="3uHU7B">
              <property role="Xl_RC" value="Replace with " />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="2CEQDIE0t1s" role="2ZfgGD">
      <node concept="3clFbS" id="2CEQDIE0t1t" role="2VODD2">
        <node concept="3cpWs8" id="2CEQDIE0GfW" role="3cqZAp">
          <node concept="3cpWsn" id="2CEQDIE0GfX" role="3cpWs9">
            <property role="TrG5h" value="ast" />
            <node concept="3Tqbb2" id="2CEQDIE0Gf$" role="1tU5fm">
              <ref role="ehGHo" to="5j4j:6$jH9oLmUCq" resolve="Ast" />
            </node>
            <node concept="2Sf5sV" id="2CEQDIE0GfY" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="2CEQDIE2KNK" role="3cqZAp">
          <node concept="3cpWsn" id="2CEQDIE2KNL" role="3cpWs9">
            <property role="TrG5h" value="cpd" />
            <node concept="3Tqbb2" id="2CEQDIE2KNC" role="1tU5fm">
              <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
            </node>
            <node concept="2YIFZM" id="2CEQDIE2KNM" role="33vP2m">
              <ref role="37wK5l" to="hy7p:2CEQDIE2hE2" resolve="createFromTemplateAndPrototype" />
              <ref role="1Pybhc" to="hy7p:2N2MQGCJu8I" resolve="TypeTermUtil" />
              <node concept="2OqwBi" id="2CEQDIE2KNN" role="37wK5m">
                <node concept="38Zlrr" id="2CEQDIE2KNO" role="2Oq$k0" />
                <node concept="3TrEf2" id="2CEQDIE2KNP" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:1pPth$m5BbA" />
                </node>
              </node>
              <node concept="1PxgMI" id="2CEQDIE2Mno" role="37wK5m">
                <ref role="1PxNhF" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
                <node concept="2OqwBi" id="2CEQDIE2KNQ" role="1PxMeX">
                  <node concept="37vLTw" id="2CEQDIE2KNR" role="2Oq$k0">
                    <ref role="3cqZAo" node="2CEQDIE0GfX" resolve="ast" />
                  </node>
                  <node concept="3TrEf2" id="2CEQDIE2KNS" role="2OqNvi">
                    <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2CEQDIE0GdA" role="3cqZAp">
          <node concept="3cpWsn" id="2CEQDIE0GdB" role="3cpWs9">
            <property role="TrG5h" value="tterm" />
            <node concept="3Tqbb2" id="2CEQDIE0Gd_" role="1tU5fm">
              <ref role="ehGHo" to="wq2x:2CEQDIDRX6M" resolve="TypeTerm" />
            </node>
            <node concept="2OqwBi" id="2CEQDIE0GdC" role="33vP2m">
              <node concept="2Sf5sV" id="2CEQDIE0GdD" role="2Oq$k0" />
              <node concept="2DeJnW" id="2CEQDIE0GdE" role="2OqNvi">
                <ref role="1_rbq0" to="wq2x:2CEQDIDRX6M" resolve="TypeTerm" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2CEQDIE0FNt" role="3cqZAp">
          <node concept="2OqwBi" id="2CEQDIE0GGQ" role="3clFbG">
            <node concept="2OqwBi" id="2CEQDIE0Glf" role="2Oq$k0">
              <node concept="37vLTw" id="2CEQDIE0GdF" role="2Oq$k0">
                <ref role="3cqZAo" node="2CEQDIE0GdB" resolve="tterm" />
              </node>
              <node concept="3TrEf2" id="2CEQDIE0GvX" role="2OqNvi">
                <ref role="3Tt5mk" to="wq2x:2CEQDIDTdBu" />
              </node>
            </node>
            <node concept="2oxUTD" id="2CEQDIE0GZT" role="2OqNvi">
              <node concept="38Zlrr" id="2CEQDIE0H0S" role="2oxUTC" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2CEQDIE0H3k" role="3cqZAp">
          <node concept="2OqwBi" id="2CEQDIE0HEj" role="3clFbG">
            <node concept="2OqwBi" id="2CEQDIE0H9O" role="2Oq$k0">
              <node concept="37vLTw" id="2CEQDIE0H3i" role="2Oq$k0">
                <ref role="3cqZAo" node="2CEQDIE0GdB" resolve="tterm" />
              </node>
              <node concept="3TrEf2" id="2CEQDIE0HuN" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" />
              </node>
            </node>
            <node concept="2oxUTD" id="2CEQDIE0HRa" role="2OqNvi">
              <node concept="37vLTw" id="2CEQDIE2MIE" role="2oxUTC">
                <ref role="3cqZAo" node="2CEQDIE2KNL" resolve="cpd" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="38BcoT" id="2CEQDIE0tgl" role="3dlsAV">
      <node concept="3clFbS" id="2CEQDIE0tgm" role="2VODD2">
        <node concept="3clFbF" id="2CEQDIE0v$3" role="3cqZAp">
          <node concept="2OqwBi" id="2CEQDIE0zUW" role="3clFbG">
            <node concept="1eOMI4" id="2CEQDIE0y0B" role="2Oq$k0">
              <node concept="10QFUN" id="2CEQDIE0y0$" role="1eOMHV">
                <node concept="A3Dl8" id="2CEQDIE0ytM" role="10QFUM">
                  <node concept="3Tqbb2" id="2CEQDIE0yUe" role="A3Ik2">
                    <ref role="ehGHo" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2CEQDIE0y0D" role="10QFUP">
                  <node concept="2ShNRf" id="2CEQDIE0y0E" role="2Oq$k0">
                    <node concept="1pGfFk" id="2CEQDIE0y0F" role="2ShVmc">
                      <ref role="37wK5l" to="35tq:~ModelPlusImportedScope.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel,boolean,org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="ModelPlusImportedScope" />
                      <node concept="2OqwBi" id="2CEQDIE0_Kw" role="37wK5m">
                        <node concept="2Sf5sV" id="2CEQDIE0_wx" role="2Oq$k0" />
                        <node concept="I4A8Y" id="2CEQDIE0A6K" role="2OqNvi" />
                      </node>
                      <node concept="3clFbT" id="2CEQDIE0y0H" role="37wK5m">
                        <property role="3clFbU" value="false" />
                      </node>
                      <node concept="35c_gC" id="2CEQDIE0y0I" role="37wK5m">
                        <ref role="35c_gD" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2CEQDIE0y0J" role="2OqNvi">
                    <ref role="37wK5l" to="35tq:~ModelsScope.getAvailableElements(java.lang.String):java.lang.Iterable" resolve="getAvailableElements" />
                    <node concept="Xl_RD" id="2CEQDIE0y0K" role="37wK5m">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="2CEQDIE0$Fa" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="2CEQDIE0tpn" role="3ddBve">
        <ref role="ehGHo" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
      </node>
    </node>
    <node concept="2SaL7w" id="2CEQDIE34ld" role="2ZfVeh">
      <node concept="3clFbS" id="2CEQDIE34le" role="2VODD2">
        <node concept="3clFbF" id="2CEQDIE34ZN" role="3cqZAp">
          <node concept="2OqwBi" id="2CEQDIE35so" role="3clFbG">
            <node concept="2OqwBi" id="2CEQDIE354c" role="2Oq$k0">
              <node concept="2Sf5sV" id="2CEQDIE34ZM" role="2Oq$k0" />
              <node concept="3TrEf2" id="2CEQDIE35ef" role="2OqNvi">
                <ref role="3Tt5mk" to="5j4j:6$jH9oLmVNm" />
              </node>
            </node>
            <node concept="1mIQ4w" id="2CEQDIE35EY" role="2OqNvi">
              <node concept="chp4Y" id="2CEQDIE35PP" role="cj9EA">
                <ref role="cht4Q" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

