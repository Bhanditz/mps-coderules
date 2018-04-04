<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0730b0d1-7e2f-4982-aac3-8069c5060a9c(jetbrains.mps.lang.typesystem2.reporting)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="hano" ref="r:2b43b673-12f9-49ea-8e43-d0c7a401586a(jetbrains.mps.lang.typesystem2.evaluation)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.typesystem2.macro)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="oI9YrIZeS">
    <property role="TrG5h" value="Reporting" />
    <node concept="2tJIrI" id="oI9YrIZfa" role="jymVt" />
    <node concept="3clFb_" id="oI9YrIZnU" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="assignType" />
      <node concept="37vLTG" id="oI9YrIZq4" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="oI9YrIZrX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="oI9YrIZqr" role="3clF46">
        <property role="TrG5h" value="nodeType" />
        <node concept="3Tqbb2" id="oI9YrIZxJ" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="oI9YrIZpM" role="3clF45" />
      <node concept="3Tm1VV" id="oI9YrIZnX" role="1B3o_S" />
      <node concept="3clFbS" id="oI9YrIZnY" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="oI9YrIZfj" role="jymVt" />
    <node concept="3Tm1VV" id="oI9YrIZeT" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="oI9YrIZTG">
    <property role="TrG5h" value="ReportingFrom" />
    <node concept="2tJIrI" id="oI9YrIZUi" role="jymVt" />
    <node concept="2YIFZL" id="oI9YrIZUA" role="jymVt">
      <property role="TrG5h" value="solver" />
      <node concept="37vLTG" id="oI9YrIZVw" role="3clF46">
        <property role="TrG5h" value="sessionSolver" />
        <node concept="3uibUv" id="oI9YrIZWj" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
        </node>
      </node>
      <node concept="3uibUv" id="oI9YrIZV1" role="3clF45">
        <ref role="3uigEE" node="oI9YrIZeS" resolve="Reporting" />
      </node>
      <node concept="3Tm1VV" id="oI9YrIZUD" role="1B3o_S" />
      <node concept="3clFbS" id="oI9YrIZUE" role="3clF47">
        <node concept="3SKdUt" id="oI9YrJ1AH" role="3cqZAp">
          <node concept="3SKdUq" id="oI9YrJ1AJ" role="3SKWNk">
            <property role="3SKdUp" value="TODO: pluggable components" />
          </node>
        </node>
        <node concept="3clFbJ" id="oI9YrIZWS" role="3cqZAp">
          <node concept="2ZW3vV" id="oI9YrJ0$6" role="3clFbw">
            <node concept="3uibUv" id="oI9YrJ1rT" role="2ZW6by">
              <ref role="3uigEE" node="oI9YrIZeS" resolve="Reporting" />
            </node>
            <node concept="37vLTw" id="oI9YrIZX$" role="2ZW6bz">
              <ref role="3cqZAo" node="oI9YrIZVw" resolve="sessionSolver" />
            </node>
          </node>
          <node concept="3clFbS" id="oI9YrIZWU" role="3clFbx">
            <node concept="3cpWs6" id="oI9YrJ0ER" role="3cqZAp">
              <node concept="1eOMI4" id="oI9YrJ0FP" role="3cqZAk">
                <node concept="10QFUN" id="oI9YrJ0FM" role="1eOMHV">
                  <node concept="3uibUv" id="oI9YrJ1tE" role="10QFUM">
                    <ref role="3uigEE" node="oI9YrIZeS" resolve="Reporting" />
                  </node>
                  <node concept="37vLTw" id="oI9YrJ0FS" role="10QFUP">
                    <ref role="3cqZAo" node="oI9YrIZVw" resolve="sessionSolver" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="oI9YrJ0HG" role="3cqZAp" />
        <node concept="YS8fn" id="oI9YrJ0LG" role="3cqZAp">
          <node concept="2ShNRf" id="oI9YrJ0NY" role="YScLw">
            <node concept="1pGfFk" id="oI9YrJ0WL" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="Xl_RD" id="oI9YrJ0X1" role="37wK5m">
                <property role="Xl_RC" value="reporting not available" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="oI9YrJ1mF" role="jymVt" />
    <node concept="2YIFZL" id="oI9YrJ1oq" role="jymVt">
      <property role="TrG5h" value="application" />
      <node concept="37vLTG" id="oI9YrJ1qv" role="3clF46">
        <property role="TrG5h" value="appSession" />
        <node concept="3uibUv" id="oI9YrJ1qP" role="1tU5fm">
          <ref role="3uigEE" to="psr6:18kNIl1vDPZ" resolve="AbstractMacroProcessing" />
        </node>
      </node>
      <node concept="3uibUv" id="oI9YrJ1pY" role="3clF45">
        <ref role="3uigEE" node="oI9YrIZeS" resolve="Reporting" />
      </node>
      <node concept="3Tm1VV" id="oI9YrJ1ot" role="1B3o_S" />
      <node concept="3clFbS" id="oI9YrJ1ou" role="3clF47">
        <node concept="3SKdUt" id="oI9YrJ1Ck" role="3cqZAp">
          <node concept="3SKdUq" id="oI9YrJ1Cm" role="3SKWNk">
            <property role="3SKdUp" value="TODO: pluggable components" />
          </node>
        </node>
        <node concept="3clFbJ" id="oI9YrJ1CK" role="3cqZAp">
          <node concept="3clFbS" id="oI9YrJ1CM" role="3clFbx">
            <node concept="3cpWs6" id="oI9YrJ1VU" role="3cqZAp">
              <node concept="1eOMI4" id="oI9YrJ1WT" role="3cqZAk">
                <node concept="10QFUN" id="oI9YrJ1WQ" role="1eOMHV">
                  <node concept="3uibUv" id="oI9YrJ1WV" role="10QFUM">
                    <ref role="3uigEE" node="oI9YrIZeS" resolve="Reporting" />
                  </node>
                  <node concept="37vLTw" id="oI9YrJ1WW" role="10QFUP">
                    <ref role="3cqZAo" node="oI9YrJ1qv" resolve="appSession" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="oI9YrJ1Sh" role="3clFbw">
            <node concept="3uibUv" id="oI9YrJ1Ve" role="2ZW6by">
              <ref role="3uigEE" node="oI9YrIZeS" resolve="Reporting" />
            </node>
            <node concept="37vLTw" id="oI9YrJ1Dx" role="2ZW6bz">
              <ref role="3cqZAo" node="oI9YrJ1qv" resolve="appSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="oI9YrJ1XR" role="3cqZAp" />
        <node concept="YS8fn" id="oI9YrJ1XS" role="3cqZAp">
          <node concept="2ShNRf" id="oI9YrJ1XT" role="YScLw">
            <node concept="1pGfFk" id="oI9YrJ1XU" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="Xl_RD" id="oI9YrJ1XV" role="37wK5m">
                <property role="Xl_RC" value="reporting not available" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="oI9YrIZUn" role="jymVt" />
    <node concept="3Tm1VV" id="oI9YrIZTH" role="1B3o_S" />
  </node>
</model>
