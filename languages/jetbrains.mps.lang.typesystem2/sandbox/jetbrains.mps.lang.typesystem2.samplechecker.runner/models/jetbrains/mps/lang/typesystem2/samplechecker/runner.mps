<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:999d4d33-c34a-4228-9fea-c5d1d293923a(jetbrains.mps.lang.typesystem2.samplechecker.runner)">
  <persistence version="9" />
  <languages>
    <use id="894463aa-8754-49c0-bf4b-6a32af66b376" name="jetbrains.mps.jchr" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="-1" />
  </languages>
  <imports>
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="uiwa" ref="r:834aed36-d663-4ac5-9f19-cf6ba3aaf1b2(jetbrains.mps.lang.typesystem2.samplechecker.chr)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
    <import index="w2rx" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="fxg7" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="k7g3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="jo0n" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime.debug.graphical(jetbrains.mps.jchr.runtime/runtime.debug.graphical@java_stub)" />
    <import index="5t0y" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime.debug(jetbrains.mps.jchr.runtime/runtime.debug@java_stub)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="6329021646629175143" name="jetbrains.mps.baseLanguage.structure.StatementCommentPart" flags="nn" index="3SKWN0">
        <child id="6329021646629175144" name="commentedStatement" index="3SKWNf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="894463aa-8754-49c0-bf4b-6a32af66b376" name="jetbrains.mps.jchr">
      <concept id="1503029981970139" name="jetbrains.mps.jchr.structure.ParameterizedConstraintOperation" flags="ng" index="1Kb2w$">
        <child id="1503029982813032" name="parameter" index="1KcKQn" />
      </concept>
      <concept id="1503029981964506" name="jetbrains.mps.jchr.structure.HandlerType" flags="ig" index="1Kb3S_">
        <reference id="1503029982163244" name="handler" index="1Kaivj" />
      </concept>
      <concept id="1503029982035201" name="jetbrains.mps.jchr.structure.HandlerCreator" flags="ng" index="1KbMJY">
        <reference id="1503029982159404" name="handler" index="1Kajjj" />
        <child id="1503029984919269" name="solver" index="1KkMwq" />
      </concept>
      <concept id="1503029982882979" name="jetbrains.mps.jchr.structure.TellConstraintOperation" flags="ng" index="1KczDs" />
      <concept id="1503029983897936" name="jetbrains.mps.jchr.structure.ConstraintOperation" flags="ng" index="1KgVYJ">
        <reference id="1503029983918490" name="constraint" index="1KgAX_" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.Ast" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="7571593955706137125" name="jetbrains.mps.logic.structure.Node" flags="ng" index="1oi5UN">
        <child id="7571593955706284441" name="role" index="1ojpOf" />
      </concept>
      <concept id="7571593955706137472" name="jetbrains.mps.logic.structure.ValueRole" flags="ng" index="1oi5Wm">
        <child id="7571593955706137672" name="contents" index="1oi5zu" />
      </concept>
      <concept id="7571593955706137573" name="jetbrains.mps.logic.structure.ValueHolder" flags="ng" index="1oi5XN">
        <property id="7571593955706137638" name="value" index="1oi5yK" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3Qp4N06bZn0">
    <property role="TrG5h" value="TestHandlerRunner" />
    <node concept="2tJIrI" id="3Qp4N06bZn1" role="jymVt" />
    <node concept="2YIFZL" id="3Qp4N06bZn2" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="3Qp4N06bZn3" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="3Qp4N06bZn4" role="1tU5fm">
          <node concept="17QB3L" id="3Qp4N06bZn5" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="3Qp4N06bZn6" role="3clF45" />
      <node concept="3Tm1VV" id="3Qp4N06bZn7" role="1B3o_S" />
      <node concept="3clFbS" id="3Qp4N06bZn8" role="3clF47">
        <node concept="3clFbH" id="3Qp4N06bZn9" role="3cqZAp" />
        <node concept="3cpWs8" id="3Qp4N06bZna" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06bZnb" role="3cpWs9">
            <property role="TrG5h" value="farm" />
            <node concept="2ShNRf" id="3Qp4N06bZnd" role="33vP2m">
              <node concept="1pGfFk" id="3Qp4N06bZne" role="2ShVmc">
                <ref role="37wK5l" to="yg8f:2GO7tyK97tX" resolve="SolverFarm" />
                <node concept="10M0yZ" id="3Qp4N06bZnf" role="37wK5m">
                  <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                  <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                </node>
                <node concept="10M0yZ" id="2ev$9JFNZsb" role="37wK5m">
                  <ref role="1PxDUh" to="oy3s:3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                  <ref role="3cqZAo" to="oy3s:3HJTsBn4kQs" resolve="INSTANCE" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="3Qp4N06bZnc" role="1tU5fm">
              <ref role="3uigEE" to="yg8f:2GO7tyJS2HQ" resolve="SolverFarm" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Qp4N06bZng" role="3cqZAp" />
        <node concept="3cpWs8" id="3Qp4N06bZnh" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06bZni" role="3cpWs9">
            <property role="TrG5h" value="handler" />
            <node concept="1Kb3S_" id="3Qp4N06bZnj" role="1tU5fm">
              <ref role="1Kaivj" to="uiwa:2ev$9JFQ$Va" resolve="testHandler" />
            </node>
            <node concept="2ShNRf" id="3Qp4N06bZnk" role="33vP2m">
              <node concept="1KbMJY" id="3Qp4N06bZnl" role="2ShVmc">
                <ref role="1Kajjj" to="uiwa:2ev$9JFQ$Va" resolve="testHandler" />
                <node concept="2OqwBi" id="3Qp4N06bZnm" role="1KkMwq">
                  <node concept="37vLTw" id="3Qp4N06bZnn" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Qp4N06bZnb" resolve="farm" />
                  </node>
                  <node concept="liA8E" id="3Qp4N06bZno" role="2OqNvi">
                    <ref role="37wK5l" to="yg8f:7d$oK1$xbBk" resolve="solver" />
                    <node concept="10M0yZ" id="3Qp4N06bZnp" role="37wK5m">
                      <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                      <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Qp4N06bZnq" role="3cqZAp" />
        <node concept="3SKdUt" id="2QE4RCGlT8j" role="3cqZAp">
          <node concept="3SKWN0" id="2QE4RCGlT8k" role="3SKWNk">
            <node concept="3clFbF" id="2q_78a9b57e" role="3SKWNf">
              <node concept="2YIFZM" id="2q_78a9b9cL" role="3clFbG">
                <ref role="37wK5l" to="jo0n:~GraphicalTracer.attachTo(runtime.Handler):boolean" resolve="attachTo" />
                <ref role="1Pybhc" to="jo0n:~GraphicalTracer" resolve="GraphicalTracer" />
                <node concept="37vLTw" id="2q_78a9b9Cd" role="37wK5m">
                  <ref role="3cqZAo" node="3Qp4N06bZni" resolve="handler" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3XExYyWUV35" role="3cqZAp" />
        <node concept="3clFbF" id="3XExYyWVIVb" role="3cqZAp">
          <node concept="2YIFZM" id="3XExYyWVIVa" role="3clFbG">
            <ref role="1Pybhc" node="3Qp4N06bZn0" resolve="TestHandlerRunner" />
            <ref role="37wK5l" node="3XExYyWVIV6" resolve="attachTracerTo" />
            <node concept="37vLTw" id="3XExYyWVIV9" role="37wK5m">
              <ref role="3cqZAo" node="3Qp4N06bZni" resolve="handler" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3XExYyWVnwm" role="3cqZAp" />
        <node concept="3SKdUt" id="6YyAPwCX3xw" role="3cqZAp">
          <node concept="3SKWN0" id="6YyAPwCX3xx" role="3SKWNk">
            <node concept="3clFbF" id="6qJjpCjqwbo" role="3SKWNf">
              <node concept="2OqwBi" id="6qJjpCjqwox" role="3clFbG">
                <node concept="37vLTw" id="6qJjpCjqwbm" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Qp4N06bZni" resolve="handler" />
                </node>
                <node concept="1KczDs" id="6qJjpCjqw_S" role="2OqNvi">
                  <ref role="1KgAX_" to="uiwa:2ev$9JFQ$Vp" resolve="check" />
                  <node concept="Xl_RD" id="6qJjpCjtKec" role="1KcKQn">
                    <property role="Xl_RC" value="4438600004733396337(HelloWorld)" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6lpwCiZ78Rg" role="3cqZAp">
          <node concept="2OqwBi" id="6lpwCiZ78Rh" role="3clFbG">
            <node concept="37vLTw" id="6lpwCiZ78Ri" role="2Oq$k0">
              <ref role="3cqZAo" node="3Qp4N06bZni" resolve="handler" />
            </node>
            <node concept="1KczDs" id="6lpwCiZ78Rj" role="2OqNvi">
              <ref role="1KgAX_" to="uiwa:2ev$9JFQ$Vp" resolve="check" />
              <node concept="1oi1Uc" id="6YyAPwCRevQ" role="1KcKQn">
                <node concept="1oi5UN" id="6YyAPwCRevS" role="1oi0x0">
                  <node concept="1oi5Wm" id="6YyAPwCRevU" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="6YyAPwCRevV" role="1oi5zu">
                      <property role="1oi5yK" value="ClassConcept" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="6YyAPwCRevW" role="1ojpOf">
                    <property role="TrG5h" value="name" />
                    <node concept="1oi5XN" id="6YyAPwCRevX" role="1oi5zu">
                      <property role="1oi5yK" value="Sample" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="6YyAPwCRevY" role="1ojpOf">
                    <property role="TrG5h" value="id" />
                    <node concept="1oi5XN" id="6YyAPwCRevZ" role="1oi5zu">
                      <property role="1oi5yK" value="6270176708469746366" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Qp4N06bZn_" role="3cqZAp" />
        <node concept="1Dw8fO" id="1xCHoaHsSc$" role="3cqZAp">
          <node concept="3clFbS" id="1xCHoaHsScB" role="2LFqv$">
            <node concept="3clFbF" id="3Qp4N06bZo4" role="3cqZAp">
              <node concept="2OqwBi" id="3Qp4N06bZo5" role="3clFbG">
                <node concept="10M0yZ" id="3Qp4N06bZo6" role="2Oq$k0">
                  <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
                  <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="3Qp4N06bZo7" role="2OqNvi">
                  <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="2YIFZM" id="1H8E3iB4$z4" role="37wK5m">
                    <ref role="1Pybhc" node="3Qp4N06bZn0" resolve="TestHandlerRunner" />
                    <ref role="37wK5l" node="1H8E3iB4zRw" resolve="toText" />
                    <node concept="2OqwBi" id="1xCHoaHsVKq" role="37wK5m">
                      <node concept="37vLTw" id="1xCHoaHsVFU" role="2Oq$k0">
                        <ref role="3cqZAo" node="1xCHoaHsScE" resolve="cit" />
                      </node>
                      <node concept="liA8E" id="1xCHoaHsW1g" role="2OqNvi">
                        <ref role="37wK5l" to="k7g3:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1xCHoaHsScE" role="1Duv9x">
            <property role="TrG5h" value="cit" />
            <node concept="3uibUv" id="1xCHoaHsSzR" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Iterator" resolve="Iterator" />
              <node concept="3uibUv" id="1xCHoaHsTh1" role="11_B2D">
                <ref role="3uigEE" to="w2rx:~IConstraint" resolve="IConstraint" />
              </node>
            </node>
            <node concept="2OqwBi" id="1xCHoaHsTn9" role="33vP2m">
              <node concept="1eOMI4" id="1xCHoaHsTna" role="2Oq$k0">
                <node concept="10QFUN" id="1xCHoaHsTnb" role="1eOMHV">
                  <node concept="37vLTw" id="1xCHoaHsTnc" role="10QFUP">
                    <ref role="3cqZAo" node="3Qp4N06bZni" resolve="handler" />
                  </node>
                  <node concept="3uibUv" id="1xCHoaHsTnd" role="10QFUM">
                    <ref role="3uigEE" to="e2lb:~Iterable" resolve="Iterable" />
                    <node concept="3uibUv" id="1xCHoaHsTne" role="11_B2D">
                      <ref role="3uigEE" to="w2rx:~IConstraint" resolve="IConstraint" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1xCHoaHsTnf" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~Iterable.iterator():java.util.Iterator" resolve="iterator" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1xCHoaHsTFS" role="1Dwp0S">
            <node concept="37vLTw" id="1xCHoaHsTza" role="2Oq$k0">
              <ref role="3cqZAo" node="1xCHoaHsScE" resolve="cit" />
            </node>
            <node concept="liA8E" id="1xCHoaHsU77" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Iterator.hasNext():boolean" resolve="hasNext" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1xCHoaHsUaE" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="1H8E3iB4Co3" role="jymVt" />
    <node concept="2YIFZL" id="1H8E3iB4zRw" role="jymVt">
      <property role="TrG5h" value="toText" />
      <node concept="3Tm6S6" id="1H8E3iB4zRx" role="1B3o_S" />
      <node concept="17QB3L" id="1H8E3iB4zRy" role="3clF45" />
      <node concept="37vLTG" id="1H8E3iB4zRr" role="3clF46">
        <property role="TrG5h" value="cst" />
        <node concept="3uibUv" id="1H8E3iB4zRs" role="1tU5fm">
          <ref role="3uigEE" to="w2rx:~IConstraint" resolve="IConstraint" />
        </node>
      </node>
      <node concept="3clFbS" id="1H8E3iB4zQI" role="3clF47">
        <node concept="3cpWs8" id="104EUzFgB$7" role="3cqZAp">
          <node concept="3cpWsn" id="104EUzFgB$8" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="104EUzFgB$9" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="104EUzFgC5y" role="33vP2m">
              <node concept="1pGfFk" id="104EUzFgC4F" role="2ShVmc">
                <ref role="37wK5l" to="e2lb:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="104EUzFgD9q" role="3cqZAp">
          <node concept="2OqwBi" id="104EUzFgFGb" role="3clFbG">
            <node concept="2OqwBi" id="104EUzFgDqd" role="2Oq$k0">
              <node concept="37vLTw" id="104EUzFgD9o" role="2Oq$k0">
                <ref role="3cqZAo" node="104EUzFgB$8" resolve="sb" />
              </node>
              <node concept="liA8E" id="104EUzFgDNZ" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="2OqwBi" id="104EUzFgG$Q" role="37wK5m">
                  <node concept="37vLTw" id="104EUzFgG$R" role="2Oq$k0">
                    <ref role="3cqZAo" node="1H8E3iB4zRr" resolve="cst" />
                  </node>
                  <node concept="liA8E" id="104EUzFgG$S" role="2OqNvi">
                    <ref role="37wK5l" to="w2rx:~IConstraint.getIdentifier():java.lang.String" resolve="getIdentifier" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="104EUzFgG7G" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="Xl_RD" id="104EUzFgGaL" role="37wK5m">
                <property role="Xl_RC" value="&gt; \n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="104EUzFgAyR" role="3cqZAp" />
        <node concept="3cpWs8" id="1H8E3iB4zQL" role="3cqZAp">
          <node concept="3cpWsn" id="1H8E3iB4zQM" role="3cpWs9">
            <property role="TrG5h" value="arg" />
            <node concept="10Q1$e" id="1H8E3iB4zQN" role="1tU5fm">
              <node concept="3uibUv" id="1H8E3iB4zQO" role="10Q1$1">
                <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2OqwBi" id="1H8E3iB4zQP" role="33vP2m">
              <node concept="37vLTw" id="1H8E3iB4zRt" role="2Oq$k0">
                <ref role="3cqZAo" node="1H8E3iB4zRr" resolve="cst" />
              </node>
              <node concept="liA8E" id="1H8E3iB4zQR" role="2OqNvi">
                <ref role="37wK5l" to="w2rx:~IConstraint.getArguments():java.lang.Object[]" resolve="getArguments" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="104EUzFgZ7k" role="3cqZAp">
          <node concept="3cpWsn" id="104EUzFgZ7n" role="3cpWs9">
            <property role="TrG5h" value="sep" />
            <node concept="10Q1$e" id="104EUzFh01I" role="1tU5fm">
              <node concept="17QB3L" id="104EUzFgZ7i" role="10Q1$1" />
            </node>
            <node concept="2BsdOp" id="104EUzFh0bP" role="33vP2m">
              <node concept="Xl_RD" id="104EUzFh0fp" role="2BsfMF">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="Xl_RD" id="104EUzFh0lY" role="2BsfMF">
                <property role="Xl_RC" value="\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="104EUzFgKl3" role="3cqZAp">
          <node concept="3clFbS" id="104EUzFgKl6" role="2LFqv$">
            <node concept="3clFbJ" id="5HGqmA_yRMk" role="3cqZAp">
              <node concept="3clFbS" id="5HGqmA_yRMn" role="3clFbx">
                <node concept="3cpWs8" id="2q_78a8hXyU" role="3cqZAp">
                  <node concept="3cpWsn" id="2q_78a8hXyV" role="3cpWs9">
                    <property role="TrG5h" value="logical" />
                    <node concept="3uibUv" id="2q_78a8hXyB" role="1tU5fm">
                      <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                    </node>
                    <node concept="1eOMI4" id="2q_78a8hXyW" role="33vP2m">
                      <node concept="10QFUN" id="2q_78a8hXyX" role="1eOMHV">
                        <node concept="3uibUv" id="2q_78a8hXyY" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                        </node>
                        <node concept="AH0OO" id="2q_78a8hXyZ" role="10QFUP">
                          <node concept="37vLTw" id="2q_78a8hXz0" role="AHEQo">
                            <ref role="3cqZAo" node="104EUzFgKl9" resolve="i" />
                          </node>
                          <node concept="37vLTw" id="2q_78a8hXz1" role="AHHXb">
                            <ref role="3cqZAo" node="1H8E3iB4zQM" resolve="arg" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1H8E3iB4zQS" role="3cqZAp">
                  <node concept="3cpWsn" id="1H8E3iB4zQT" role="3cpWs9">
                    <property role="TrG5h" value="value" />
                    <node concept="3uibUv" id="1H8E3iB4zQU" role="1tU5fm">
                      <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                    </node>
                    <node concept="2OqwBi" id="1H8E3iB4zQV" role="33vP2m">
                      <node concept="37vLTw" id="2q_78a8hXz2" role="2Oq$k0">
                        <ref role="3cqZAo" node="2q_78a8hXyV" resolve="logical" />
                      </node>
                      <node concept="liA8E" id="1H8E3iB4zR2" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2q_78a8hXQQ" role="3cqZAp">
                  <node concept="2OqwBi" id="2q_78a8hYS0" role="3clFbG">
                    <node concept="37vLTw" id="2q_78a8hXQP" role="2Oq$k0">
                      <ref role="3cqZAo" node="2q_78a8hXyV" resolve="logical" />
                    </node>
                    <node concept="liA8E" id="2q_78a8hZ6q" role="2OqNvi">
                      <ref role="37wK5l" to="w2rx:~Logical.getName():java.lang.String" resolve="getName" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1H8E3iBejpR" role="3cqZAp">
                  <node concept="3cpWsn" id="1H8E3iBejpS" role="3cpWs9">
                    <property role="TrG5h" value="prettyPrint" />
                    <node concept="17QB3L" id="1H8E3iBejpo" role="1tU5fm" />
                    <node concept="3K4zz7" id="1H8E3iBelpQ" role="33vP2m">
                      <node concept="2OqwBi" id="2q_78a8i09f" role="3K4GZi">
                        <node concept="37vLTw" id="2q_78a8hZYl" role="2Oq$k0">
                          <ref role="3cqZAo" node="2q_78a8hXyV" resolve="logical" />
                        </node>
                        <node concept="liA8E" id="2q_78a8i0yy" role="2OqNvi">
                          <ref role="37wK5l" to="w2rx:~Logical.getName():java.lang.String" resolve="getName" />
                        </node>
                      </node>
                      <node concept="3y3z36" id="1H8E3iBekFK" role="3K4Cdx">
                        <node concept="10Nm6u" id="1H8E3iBel3G" role="3uHU7w" />
                        <node concept="37vLTw" id="1H8E3iBekpP" role="3uHU7B">
                          <ref role="3cqZAo" node="1H8E3iB4zQT" resolve="value" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="1H8E3iBejpT" role="3K4E3e">
                        <ref role="37wK5l" to="ie8e:5s497VqXK1B" resolve="prettyPrint" />
                        <ref role="1Pybhc" to="ie8e:5s497VqXwA7" resolve="PrettyPrinter" />
                        <node concept="2OqwBi" id="1H8E3iBejpU" role="37wK5m">
                          <node concept="37vLTw" id="1H8E3iBejpV" role="2Oq$k0">
                            <ref role="3cqZAo" node="1H8E3iB4zQT" resolve="value" />
                          </node>
                          <node concept="liA8E" id="1H8E3iBejpW" role="2OqNvi">
                            <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                          </node>
                        </node>
                        <node concept="3cmrfG" id="1H8E3iBejpX" role="37wK5m">
                          <property role="3cmrfH" value="2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="104EUzFhf$4" role="3cqZAp">
                  <node concept="2OqwBi" id="104EUzFhm_g" role="3clFbG">
                    <node concept="2OqwBi" id="104EUzFhf$5" role="2Oq$k0">
                      <node concept="2OqwBi" id="104EUzFhf$6" role="2Oq$k0">
                        <node concept="2OqwBi" id="104EUzFhf$7" role="2Oq$k0">
                          <node concept="37vLTw" id="104EUzFhf$8" role="2Oq$k0">
                            <ref role="3cqZAo" node="104EUzFgB$8" resolve="sb" />
                          </node>
                          <node concept="liA8E" id="104EUzFhf$9" role="2OqNvi">
                            <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                            <node concept="AH0OO" id="104EUzFhf$a" role="37wK5m">
                              <node concept="1rXfSq" id="104EUzFhf$b" role="AHEQo">
                                <ref role="37wK5l" node="104EUzFheOH" resolve="sgn" />
                                <node concept="37vLTw" id="104EUzFhf$c" role="37wK5m">
                                  <ref role="3cqZAo" node="104EUzFgKl9" resolve="i" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="104EUzFhf$d" role="AHHXb">
                                <ref role="3cqZAo" node="104EUzFgZ7n" resolve="sep" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="104EUzFhf$e" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="Xl_RD" id="104EUzFhf$f" role="37wK5m">
                            <property role="Xl_RC" value="  `" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="104EUzFhf$g" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                        <node concept="37vLTw" id="104EUzFhmmw" role="37wK5m">
                          <ref role="3cqZAo" node="1H8E3iBejpS" resolve="prettyPrint" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="104EUzFhnNR" role="2OqNvi">
                      <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                      <node concept="Xl_RD" id="104EUzFhnYQ" role="37wK5m">
                        <property role="Xl_RC" value="`" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="104EUzFhl1Z" role="3cqZAp" />
              </node>
              <node concept="2ZW3vV" id="5HGqmA_ySoT" role="3clFbw">
                <node concept="3uibUv" id="5HGqmA_ySvV" role="2ZW6by">
                  <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
                </node>
                <node concept="AH0OO" id="5HGqmA_ySfI" role="2ZW6bz">
                  <node concept="37vLTw" id="104EUzFgRYw" role="AHEQo">
                    <ref role="3cqZAo" node="104EUzFgKl9" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="5HGqmA_ySat" role="AHHXb">
                    <ref role="3cqZAo" node="1H8E3iB4zQM" resolve="arg" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="5HGqmA_yT3g" role="9aQIa">
                <node concept="3clFbS" id="5HGqmA_yT3h" role="9aQI4">
                  <node concept="3cpWs8" id="5HGqmA_yTvS" role="3cqZAp">
                    <node concept="3cpWsn" id="5HGqmA_yTvT" role="3cpWs9">
                      <property role="TrG5h" value="id" />
                      <node concept="3uibUv" id="5HGqmA_yTvU" role="1tU5fm">
                        <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
                        <node concept="17QB3L" id="77AxcO5bvNs" role="11_B2D" />
                      </node>
                      <node concept="10QFUN" id="5HGqmA_yTvW" role="33vP2m">
                        <node concept="3uibUv" id="5HGqmA_yTvX" role="10QFUM">
                          <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
                          <node concept="17QB3L" id="77AxcO5bvNr" role="11_B2D" />
                        </node>
                        <node concept="AH0OO" id="5HGqmA_yTvZ" role="10QFUP">
                          <node concept="37vLTw" id="104EUzFgTkL" role="AHEQo">
                            <ref role="3cqZAo" node="104EUzFgKl9" resolve="i" />
                          </node>
                          <node concept="37vLTw" id="5HGqmA_yTw1" role="AHHXb">
                            <ref role="3cqZAo" node="1H8E3iB4zQM" resolve="arg" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="104EUzFgV4o" role="3cqZAp">
                    <node concept="2OqwBi" id="104EUzFgW2c" role="3clFbG">
                      <node concept="2OqwBi" id="104EUzFgVml" role="2Oq$k0">
                        <node concept="2OqwBi" id="104EUzFgXx4" role="2Oq$k0">
                          <node concept="37vLTw" id="104EUzFgV4m" role="2Oq$k0">
                            <ref role="3cqZAo" node="104EUzFgB$8" resolve="sb" />
                          </node>
                          <node concept="liA8E" id="104EUzFgYoz" role="2OqNvi">
                            <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                            <node concept="AH0OO" id="104EUzFh1B8" role="37wK5m">
                              <node concept="1rXfSq" id="104EUzFhf8g" role="AHEQo">
                                <ref role="37wK5l" node="104EUzFheOH" resolve="sgn" />
                                <node concept="37vLTw" id="104EUzFhfhz" role="37wK5m">
                                  <ref role="3cqZAo" node="104EUzFgKl9" resolve="i" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="104EUzFh0wG" role="AHHXb">
                                <ref role="3cqZAo" node="104EUzFgZ7n" resolve="sep" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="104EUzFgVJu" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="Xl_RD" id="104EUzFgVLX" role="37wK5m">
                            <property role="Xl_RC" value="  @" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="104EUzFgWpb" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                        <node concept="2OqwBi" id="104EUzFgWH3" role="37wK5m">
                          <node concept="37vLTw" id="104EUzFgWv8" role="2Oq$k0">
                            <ref role="3cqZAo" node="5HGqmA_yTvT" resolve="id" />
                          </node>
                          <node concept="liA8E" id="104EUzFgXdc" role="2OqNvi">
                            <ref role="37wK5l" to="w2rx:~Logical.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="104EUzFgUxR" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="104EUzFgKl9" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="104EUzFgKOz" role="1tU5fm" />
            <node concept="3cmrfG" id="104EUzFgKT1" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="104EUzFgLnU" role="1Dwp0S">
            <node concept="2OqwBi" id="104EUzFgLBt" role="3uHU7w">
              <node concept="37vLTw" id="104EUzFgLux" role="2Oq$k0">
                <ref role="3cqZAo" node="1H8E3iB4zQM" resolve="arg" />
              </node>
              <node concept="1Rwk04" id="104EUzFgLSb" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="104EUzFgKWl" role="3uHU7B">
              <ref role="3cqZAo" node="104EUzFgKl9" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="104EUzFgMcY" role="1Dwrff">
            <node concept="37vLTw" id="104EUzFgMd0" role="2$L3a6">
              <ref role="3cqZAo" node="104EUzFgKl9" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="104EUzFgMnh" role="3cqZAp" />
        <node concept="3clFbF" id="104EUzFgR9I" role="3cqZAp">
          <node concept="2OqwBi" id="104EUzFgRu7" role="3clFbG">
            <node concept="37vLTw" id="104EUzFgR9G" role="2Oq$k0">
              <ref role="3cqZAo" node="104EUzFgB$8" resolve="sb" />
            </node>
            <node concept="liA8E" id="104EUzFgRTt" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFh8R8" role="jymVt" />
    <node concept="2YIFZL" id="104EUzFheOH" role="jymVt">
      <property role="TrG5h" value="sgn" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="104EUzFh9dQ" role="3clF47">
        <node concept="3clFbF" id="104EUzFha67" role="3cqZAp">
          <node concept="3K4zz7" id="104EUzFhaAl" role="3clFbG">
            <node concept="1eOMI4" id="104EUzFhaIh" role="3K4GZi">
              <node concept="3K4zz7" id="104EUzFhdv$" role="1eOMHV">
                <node concept="3cmrfG" id="104EUzFhdDj" role="3K4GZi">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="104EUzFhd$U" role="3K4E3e">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="3eOVzh" id="104EUzFhaWa" role="3K4Cdx">
                  <node concept="3cmrfG" id="104EUzFhaWr" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="104EUzFhaJE" role="3uHU7B">
                    <ref role="3cqZAo" node="104EUzFh9Vu" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cmrfG" id="104EUzFhaC$" role="3K4E3e">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3clFbC" id="104EUzFhah_" role="3K4Cdx">
              <node concept="3cmrfG" id="104EUzFhapc" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="104EUzFha66" role="3uHU7B">
                <ref role="3cqZAo" node="104EUzFh9Vu" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="104EUzFh9Vu" role="3clF46">
        <property role="TrG5h" value="i" />
        <node concept="10Oyi0" id="104EUzFh9Vt" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="104EUzFh9wB" role="3clF45" />
      <node concept="3Tm6S6" id="104EUzFhekD" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3Qp4N06bZoq" role="jymVt" />
    <node concept="2YIFZL" id="3XExYyWVIV6" role="jymVt">
      <property role="TrG5h" value="attachTracerTo" />
      <node concept="3Tm6S6" id="3XExYyWVIV7" role="1B3o_S" />
      <node concept="3cqZAl" id="3XExYyWVIV8" role="3clF45" />
      <node concept="37vLTG" id="3XExYyWVIV0" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="1Kb3S_" id="3XExYyWVIV1" role="1tU5fm">
          <ref role="1Kaivj" to="uiwa:2ev$9JFQ$Va" resolve="testHandler" />
        </node>
      </node>
      <node concept="3clFbS" id="3XExYyWVIUA" role="3clF47">
        <node concept="3cpWs8" id="3XExYyWVIUB" role="3cqZAp">
          <node concept="3cpWsn" id="3XExYyWVIUC" role="3cpWs9">
            <property role="TrG5h" value="tracer" />
            <node concept="3uibUv" id="3XExYyWVIUD" role="1tU5fm">
              <ref role="3uigEE" node="3XExYyWVj2K" resolve="TestHandlerRunner.MyGraphicalTracer" />
            </node>
            <node concept="2ShNRf" id="3XExYyWVIUE" role="33vP2m">
              <node concept="1pGfFk" id="3XExYyWVIUF" role="2ShVmc">
                <ref role="37wK5l" node="3XExYyWVjVp" resolve="TestHandlerRunner.MyGraphicalTracer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3XExYyWVIUG" role="3cqZAp">
          <node concept="2OqwBi" id="3XExYyWVIUH" role="3clFbG">
            <node concept="1eOMI4" id="3XExYyWVIUI" role="2Oq$k0">
              <node concept="10QFUN" id="3XExYyWVIUJ" role="1eOMHV">
                <node concept="37vLTw" id="3XExYyWVIV3" role="10QFUP">
                  <ref role="3cqZAo" node="3XExYyWVIV0" resolve="handler" />
                </node>
                <node concept="3uibUv" id="3XExYyWVIUL" role="10QFUM">
                  <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3XExYyWVIUM" role="2OqNvi">
              <ref role="37wK5l" to="w2rx:~Handler.setTracer(runtime.debug.Tracer):void" resolve="setTracer" />
              <node concept="2ShNRf" id="3XExYyWVIUN" role="37wK5m">
                <node concept="1pGfFk" id="3XExYyWVIUO" role="2ShVmc">
                  <ref role="37wK5l" to="5t0y:~InterruptableTracer.&lt;init&gt;(runtime.debug.InterruptableTracer$InterruptingTracer)" resolve="InterruptableTracer" />
                  <node concept="37vLTw" id="3XExYyWVIUP" role="37wK5m">
                    <ref role="3cqZAo" node="3XExYyWVIUC" resolve="tracer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3XExYyWVIUQ" role="3cqZAp">
          <node concept="2OqwBi" id="3XExYyWVIUR" role="3clFbG">
            <node concept="37vLTw" id="3XExYyWVIUS" role="2Oq$k0">
              <ref role="3cqZAo" node="3XExYyWVIUC" resolve="tracer" />
            </node>
            <node concept="liA8E" id="3XExYyWVIUT" role="2OqNvi">
              <ref role="37wK5l" node="3XExYyWVk5h" resolve="init" />
              <node concept="2OqwBi" id="3XExYyWVIUU" role="37wK5m">
                <node concept="1eOMI4" id="3XExYyWVIUV" role="2Oq$k0">
                  <node concept="10QFUN" id="3XExYyWVIUW" role="1eOMHV">
                    <node concept="37vLTw" id="3XExYyWVIV2" role="10QFUP">
                      <ref role="3cqZAo" node="3XExYyWVIV0" resolve="handler" />
                    </node>
                    <node concept="3uibUv" id="3XExYyWVIUY" role="10QFUM">
                      <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3XExYyWVIUZ" role="2OqNvi">
                  <ref role="37wK5l" to="w2rx:~Handler.getTracerView():runtime.Handler" resolve="getTracerView" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1H8E3iB4Cr8" role="jymVt" />
    <node concept="2tJIrI" id="3XExYyWVilq" role="jymVt" />
    <node concept="312cEu" id="3XExYyWVj2K" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="MyGraphicalTracer" />
      <node concept="2tJIrI" id="3XExYyWVkuM" role="jymVt" />
      <node concept="3clFbW" id="3XExYyWVjVp" role="jymVt">
        <node concept="3cqZAl" id="3XExYyWVjVr" role="3clF45" />
        <node concept="3Tm1VV" id="3XExYyWVjVs" role="1B3o_S" />
        <node concept="3clFbS" id="3XExYyWVjVt" role="3clF47">
          <node concept="XkiVB" id="3XExYyWVk22" role="3cqZAp">
            <ref role="37wK5l" to="jo0n:~GraphicalTracer.&lt;init&gt;(java.lang.Class...)" resolve="GraphicalTracer" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3XExYyWVk3$" role="jymVt" />
      <node concept="3clFb_" id="3XExYyWVk5h" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="init" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="3XExYyWVkk9" role="1B3o_S" />
        <node concept="3cqZAl" id="3XExYyWVk5k" role="3clF45" />
        <node concept="37vLTG" id="3XExYyWVk5l" role="3clF46">
          <property role="TrG5h" value="handler" />
          <node concept="3uibUv" id="3XExYyWVk5m" role="1tU5fm">
            <ref role="3uigEE" to="w2rx:~Handler" resolve="Handler" />
          </node>
        </node>
        <node concept="3clFbS" id="3XExYyWVk5n" role="3clF47">
          <node concept="3clFbF" id="3XExYyWVk5r" role="3cqZAp">
            <node concept="3nyPlj" id="3XExYyWVk5q" role="3clFbG">
              <ref role="37wK5l" to="jo0n:~GraphicalTracer.init(runtime.Handler):void" resolve="init" />
              <node concept="37vLTw" id="3XExYyWVk5p" role="37wK5m">
                <ref role="3cqZAo" node="3XExYyWVk5l" resolve="handler" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3XExYyWVk5o" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3XExYyWVkme" role="jymVt" />
      <node concept="3Tm1VV" id="3XExYyWVj2L" role="1B3o_S" />
      <node concept="3uibUv" id="3XExYyWVjQ4" role="1zkMxy">
        <ref role="3uigEE" to="jo0n:~GraphicalTracer" resolve="GraphicalTracer" />
      </node>
    </node>
    <node concept="2tJIrI" id="3Qp4N06bZor" role="jymVt" />
    <node concept="3Tm1VV" id="3Qp4N06bZos" role="1B3o_S" />
  </node>
</model>

