<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b533b427-da69-49d8-9c93-4ea32433b66e(jetbrains.mps.lang.typesystem2.runtime)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.template)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="rchb" ref="r:f43ee4a0-488a-425a-87a0-594ab3b0d15f(jetbrains.mps.logic.reactor.program)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="3o3z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:com.google.common.collect(MPS.Core/)" />
    <import index="nz6g" ref="r:ac00f724-30be-446e-805c-2345efc460d7(jetbrains.mps.lang.typesystem2.program)" />
    <import index="7n8k" ref="r:475a2e92-d7d4-41c3-98e3-172d70b6f018(jetbrains.mps.logic.builtin.program)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1200830824066" name="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" flags="nn" index="2n63Yl">
        <child id="1200830928149" name="expression" index="2n6tg2" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="6612597108003615641" name="jetbrains.mps.baseLanguage.javadoc.structure.HTMLElement" flags="ng" index="2U$1Ah">
        <property id="6612597108003615642" name="name" index="2U$1Ai" />
        <child id="6612597108003615643" name="line" index="2U$1Aj" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1180457458947" name="jetbrains.mps.lang.smodel.structure.Concept_GetAllSuperConcepts" flags="nn" index="3oJPKh" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144195091934" name="jetbrains.mps.lang.smodel.structure.Node_IsRoleOperation" flags="nn" index="1BlSNk">
        <reference id="1144195362400" name="conceptOfParent" index="1BmUXE" />
        <reference id="1144195396777" name="linkInParent" index="1Bn3mz" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="312cEu" id="7Oc59RSHkY6">
    <property role="TrG5h" value="ReportedErrorException" />
    <node concept="2tJIrI" id="7Oc59RSHl1K" role="jymVt" />
    <node concept="3clFbW" id="7Oc59RSHl1Q" role="jymVt">
      <node concept="3cqZAl" id="7Oc59RSHl1S" role="3clF45" />
      <node concept="3Tm1VV" id="7Oc59RSHl1T" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSHl1U" role="3clF47">
        <node concept="XkiVB" id="7Oc59RSHl5P" role="3cqZAp">
          <ref role="37wK5l" to="wyt6:~Exception.&lt;init&gt;(java.lang.String)" resolve="Exception" />
          <node concept="2OqwBi" id="7Oc59RSHl9q" role="37wK5m">
            <node concept="37vLTw" id="7Oc59RSHl7s" role="2Oq$k0">
              <ref role="3cqZAo" node="7Oc59RSHl23" resolve="error" />
            </node>
            <node concept="liA8E" id="7Oc59RSHlkJ" role="2OqNvi">
              <ref role="37wK5l" node="7Oc59RSAtph" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Oc59RSHl23" role="3clF46">
        <property role="TrG5h" value="error" />
        <node concept="3uibUv" id="7Oc59RSHl22" role="1tU5fm">
          <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSHl5x" role="jymVt" />
    <node concept="3Tm1VV" id="7Oc59RSHkY7" role="1B3o_S" />
    <node concept="3uibUv" id="7Oc59RSHkY$" role="1zkMxy">
      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
    </node>
  </node>
  <node concept="312cEu" id="7Oc59RSEjjA">
    <property role="TrG5h" value="ReportedError" />
    <node concept="2tJIrI" id="7Oc59RSEjjQ" role="jymVt" />
    <node concept="3clFbW" id="7Oc59RSAqpA" role="jymVt">
      <node concept="37vLTG" id="7Oc59RSAqt4" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="7Oc59RSAqtO" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7Oc59RSAqpC" role="3clF45" />
      <node concept="3Tm1VV" id="7Oc59RSAqpD" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSAqpE" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSArjn" role="3cqZAp">
          <node concept="37vLTI" id="7Oc59RSArjp" role="3clFbG">
            <node concept="2OqwBi" id="7Oc59RSArjt" role="37vLTJ">
              <node concept="Xjq3P" id="7Oc59RSArjw" role="2Oq$k0" />
              <node concept="2OwXpG" id="7Oc59RSArjs" role="2OqNvi">
                <ref role="2Oxat5" node="7Oc59RSArup" resolve="message" />
              </node>
            </node>
            <node concept="37vLTw" id="7Oc59RSArjx" role="37vLTx">
              <ref role="3cqZAo" node="7Oc59RSAqt4" resolve="message" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSAqD4" role="jymVt" />
    <node concept="3clFbW" id="7Oc59RSAq_i" role="jymVt">
      <node concept="37vLTG" id="7Oc59RSAq_j" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="7Oc59RSAq_k" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Oc59RSAqGI" role="3clF46">
        <property role="TrG5h" value="exception" />
        <node concept="3uibUv" id="7Oc59RSAqKK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="3cqZAl" id="7Oc59RSAq_l" role="3clF45" />
      <node concept="3Tm1VV" id="7Oc59RSAq_m" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSAq_n" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSArut" role="3cqZAp">
          <node concept="37vLTI" id="7Oc59RSAruv" role="3clFbG">
            <node concept="2OqwBi" id="7Oc59RSAruz" role="37vLTJ">
              <node concept="Xjq3P" id="7Oc59RSAruA" role="2Oq$k0" />
              <node concept="2OwXpG" id="7Oc59RSAruy" role="2OqNvi">
                <ref role="2Oxat5" node="7Oc59RSArup" resolve="message" />
              </node>
            </node>
            <node concept="37vLTw" id="7Oc59RSAruB" role="37vLTx">
              <ref role="3cqZAo" node="7Oc59RSAq_j" resolve="message" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Oc59RSArOS" role="3cqZAp">
          <node concept="37vLTI" id="7Oc59RSArOU" role="3clFbG">
            <node concept="2OqwBi" id="7Oc59RSArOY" role="37vLTJ">
              <node concept="Xjq3P" id="7Oc59RSArP1" role="2Oq$k0" />
              <node concept="2OwXpG" id="7Oc59RSArOX" role="2OqNvi">
                <ref role="2Oxat5" node="7Oc59RSArOO" resolve="exception" />
              </node>
            </node>
            <node concept="37vLTw" id="7Oc59RSArP2" role="37vLTx">
              <ref role="3cqZAo" node="7Oc59RSAqGI" resolve="exception" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSAsRk" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RSJGG8" role="jymVt">
      <property role="TrG5h" value="exception" />
      <node concept="3uibUv" id="7Oc59RSJGYN" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
      <node concept="3Tm1VV" id="7Oc59RSJGGb" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSJGGc" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSJIrV" role="3cqZAp">
          <node concept="37vLTw" id="7Oc59RSJIrU" role="3clFbG">
            <ref role="3cqZAo" node="7Oc59RSArOO" resolve="exception" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSJGpD" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RSAtph" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="7Oc59RSAtpi" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxHW" role="3clF45" />
      <node concept="3clFbS" id="7Oc59RSAtpl" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSAtSh" role="3cqZAp">
          <node concept="3cpWs3" id="7Oc59RSAu9G" role="3clFbG">
            <node concept="1eOMI4" id="7Oc59RSAufE" role="3uHU7w">
              <node concept="3K4zz7" id="7Oc59RSAuWr" role="1eOMHV">
                <node concept="3cpWs3" id="7Oc59RSAvp6" role="3K4E3e">
                  <node concept="Xl_RD" id="7Oc59RSAvxg" role="3uHU7B">
                    <property role="Xl_RC" value=": " />
                  </node>
                  <node concept="2OqwBi" id="7Oc59RSAv7m" role="3uHU7w">
                    <node concept="37vLTw" id="7Oc59RSAv3v" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Oc59RSArOO" resolve="exception" />
                    </node>
                    <node concept="liA8E" id="7Oc59RSKGAD" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="7Oc59RSAvOZ" role="3K4GZi">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="3y3z36" id="7Oc59RSAuCT" role="3K4Cdx">
                  <node concept="10Nm6u" id="7Oc59RSAuOx" role="3uHU7w" />
                  <node concept="37vLTw" id="7Oc59RSAuwy" role="3uHU7B">
                    <ref role="3cqZAo" node="7Oc59RSArOO" resolve="exception" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7Oc59RSAtSg" role="3uHU7B">
              <ref role="3cqZAo" node="7Oc59RSArup" resolve="message" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Oc59RSAtpm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSAtcx" role="jymVt" />
    <node concept="312cEg" id="7Oc59RSArup" role="jymVt">
      <property role="TrG5h" value="message" />
      <node concept="3Tm6S6" id="7Oc59RSAruq" role="1B3o_S" />
      <node concept="17QB3L" id="7Oc59RSArus" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="7Oc59RSEkPL" role="jymVt" />
    <node concept="312cEg" id="7Oc59RSArOO" role="jymVt">
      <property role="TrG5h" value="exception" />
      <node concept="3Tm6S6" id="7Oc59RSArOP" role="1B3o_S" />
      <node concept="3uibUv" id="7Oc59RSArOR" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSEjjS" role="jymVt" />
    <node concept="3Tm1VV" id="7Oc59RSEjjB" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="12yN8DyF_E1">
    <property role="TrG5h" value="TypecheckingRuleGenerator" />
    <node concept="2tJIrI" id="5ntLU8GlxKW" role="jymVt" />
    <node concept="3clFbW" id="7Oc59RSy_Op" role="jymVt">
      <node concept="3cqZAl" id="7Oc59RSy_Or" role="3clF45" />
      <node concept="3Tm1VV" id="7Oc59RSy_Os" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSy_Ot" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSyA2f" role="3cqZAp">
          <node concept="37vLTI" id="7Oc59RSyA3S" role="3clFbG">
            <node concept="37vLTw" id="7Oc59RSyA55" role="37vLTx">
              <ref role="3cqZAo" node="7Oc59RSyA1q" resolve="collection" />
            </node>
            <node concept="37vLTw" id="7Oc59RSyA2e" role="37vLTJ">
              <ref role="3cqZAo" node="5ntLU8GlznG" resolve="ruleTemplateCollection" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7nkyKX7m8kM" role="3cqZAp">
          <node concept="37vLTI" id="7nkyKX7m8kO" role="3clFbG">
            <node concept="2OqwBi" id="7nkyKX7m8kS" role="37vLTJ">
              <node concept="Xjq3P" id="7nkyKX7m8kV" role="2Oq$k0" />
              <node concept="2OwXpG" id="7nkyKX7m8kR" role="2OqNvi">
                <ref role="2Oxat5" node="7nkyKX7m8kI" resolve="main" />
              </node>
            </node>
            <node concept="37vLTw" id="7nkyKX7m8kW" role="37vLTx">
              <ref role="3cqZAo" node="7nkyKX7m7wP" resolve="main" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78CwJJcPpP_" role="3cqZAp">
          <node concept="37vLTI" id="78CwJJcPpPB" role="3clFbG">
            <node concept="2OqwBi" id="78CwJJcPpPF" role="37vLTJ">
              <node concept="Xjq3P" id="78CwJJcPpPI" role="2Oq$k0" />
              <node concept="2OwXpG" id="78CwJJcPpPE" role="2OqNvi">
                <ref role="2Oxat5" node="78CwJJcPpPx" resolve="programBuilder" />
              </node>
            </node>
            <node concept="37vLTw" id="78CwJJcPpPJ" role="37vLTx">
              <ref role="3cqZAo" node="78CwJJcPpB$" resolve="programBuilder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Oc59RSyA1q" role="3clF46">
        <property role="TrG5h" value="collection" />
        <node concept="3uibUv" id="7Oc59RSyA1p" role="1tU5fm">
          <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
        </node>
      </node>
      <node concept="37vLTG" id="7nkyKX7m7wP" role="3clF46">
        <property role="TrG5h" value="main" />
        <node concept="3uibUv" id="7nkyKX7m8gn" role="1tU5fm">
          <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="78CwJJcPpB$" role="3clF46">
        <property role="TrG5h" value="programBuilder" />
        <node concept="3uibUv" id="7nPD14O1E93" role="1tU5fm">
          <ref role="3uigEE" to="7n8k:5rhZO$TYZJM" resolve="ChrProgramBuilder" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSyviB" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7ncaN" role="jymVt">
      <property role="TrG5h" value="generateMain" />
      <node concept="37vLTG" id="7nkyKX7njPd" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="7nkyKX7njPe" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7nkyKX7nfei" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="7nkyKX7nej_" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7ncaR" role="3clF47">
        <node concept="3cpWs8" id="7nkyKX7ng8P" role="3cqZAp">
          <node concept="3cpWsn" id="7nkyKX7ng8Q" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="_YKpA" id="7nkyKX7ng8R" role="1tU5fm">
              <node concept="3uibUv" id="7nkyKX7ng8S" role="_ZDj9">
                <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
              </node>
            </node>
            <node concept="2ShNRf" id="7nkyKX7ng8T" role="33vP2m">
              <node concept="Tc6Ow" id="7nkyKX7ng8U" role="2ShVmc">
                <node concept="3uibUv" id="7nkyKX7ng8V" role="HW$YZ">
                  <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7nkyKX7nkHB" role="3cqZAp" />
        <node concept="SfApY" id="7nkyKX7nl0O" role="3cqZAp">
          <node concept="3clFbS" id="7nkyKX7nl0Q" role="SfCbr">
            <node concept="3cpWs8" id="7nkyKX7nlpa" role="3cqZAp">
              <node concept="3cpWsn" id="7nkyKX7nlpb" role="3cpWs9">
                <property role="TrG5h" value="rule" />
                <node concept="3uibUv" id="7nkyKX7nlp9" role="1tU5fm">
                  <ref role="3uigEE" to="rchb:7eGEHDlc$9y" resolve="Rule" />
                </node>
                <node concept="2OqwBi" id="7nkyKX7nlpc" role="33vP2m">
                  <node concept="37vLTw" id="7nkyKX7nlpd" role="2Oq$k0">
                    <ref role="3cqZAo" node="7nkyKX7m8kI" resolve="main" />
                  </node>
                  <node concept="liA8E" id="7nkyKX7nlpe" role="2OqNvi">
                    <ref role="37wK5l" to="nz6g:7eGEHDlc$ck" resolve="toRule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7nkyKX7nlM0" role="3cqZAp">
              <node concept="2OqwBi" id="7nkyKX7nlSO" role="3clFbG">
                <node concept="37vLTw" id="7nkyKX7nlLY" role="2Oq$k0">
                  <ref role="3cqZAo" node="78CwJJcPpPx" resolve="programBuilder" />
                </node>
                <node concept="liA8E" id="7nkyKX7nlVs" role="2OqNvi">
                  <ref role="37wK5l" to="7n8k:7eGEHDlcF9o" resolve="addRule" />
                  <node concept="37vLTw" id="7nkyKX7nmaO" role="37wK5m">
                    <ref role="3cqZAo" node="7nkyKX7nlpb" resolve="rule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7nkyKX7nmhE" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="7nkyKX7nl0R" role="TEbGg">
            <node concept="3cpWsn" id="7nkyKX7nl0T" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="7nkyKX7nmdZ" role="1tU5fm">
                <ref role="3uigEE" to="rchb:7Oc59RS$wKP" resolve="InvalidRuleException" />
              </node>
            </node>
            <node concept="3clFbS" id="7nkyKX7nl0X" role="TDEfX">
              <node concept="3cpWs8" id="7nkyKX7nmlg" role="3cqZAp">
                <node concept="3cpWsn" id="7nkyKX7nmlh" role="3cpWs9">
                  <property role="TrG5h" value="details" />
                  <node concept="17QB3L" id="7nkyKX7nmli" role="1tU5fm" />
                  <node concept="3K4zz7" id="7nkyKX7nmlj" role="33vP2m">
                    <node concept="Xl_RD" id="7nkyKX7nmlk" role="3K4GZi">
                      <property role="Xl_RC" value="" />
                    </node>
                    <node concept="3y3z36" id="7nkyKX7nmll" role="3K4Cdx">
                      <node concept="10Nm6u" id="7nkyKX7nmlm" role="3uHU7w" />
                      <node concept="37vLTw" id="7nkyKX7nmln" role="3uHU7B">
                        <ref role="3cqZAo" node="7nkyKX7njPd" resolve="root" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7nkyKX7nmlo" role="3K4E3e">
                      <node concept="2OqwBi" id="7nkyKX7nmlp" role="3uHU7w">
                        <node concept="2JrnkZ" id="7nkyKX7nmlq" role="2Oq$k0">
                          <node concept="37vLTw" id="7nkyKX7nmlr" role="2JrQYb">
                            <ref role="3cqZAo" node="7nkyKX7njPd" resolve="root" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7nkyKX7nmls" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="7nkyKX7nmlt" role="3uHU7B">
                        <node concept="3cpWs3" id="7nkyKX7nmlu" role="3uHU7B">
                          <node concept="Xl_RD" id="7nkyKX7nmlv" role="3uHU7B">
                            <property role="Xl_RC" value=" triggered by " />
                          </node>
                          <node concept="2OqwBi" id="7nkyKX7nmlw" role="3uHU7w">
                            <node concept="37vLTw" id="7nkyKX7nmlx" role="2Oq$k0">
                              <ref role="3cqZAo" node="7nkyKX7njPd" resolve="root" />
                            </node>
                            <node concept="2qgKlT" id="7nkyKX7nmly" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7nkyKX7nmlz" role="3uHU7w">
                          <property role="Xl_RC" value="@" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7nkyKX7nml$" role="3cqZAp">
                <node concept="2OqwBi" id="7nkyKX7nml_" role="3clFbG">
                  <node concept="37vLTw" id="7nkyKX7nmlA" role="2Oq$k0">
                    <ref role="3cqZAo" node="7nkyKX7ng8Q" resolve="errors" />
                  </node>
                  <node concept="TSZUe" id="7nkyKX7nmlB" role="2OqNvi">
                    <node concept="2ShNRf" id="7nkyKX7nmlC" role="25WWJ7">
                      <node concept="1pGfFk" id="7nkyKX7nmlD" role="2ShVmc">
                        <ref role="37wK5l" node="7Oc59RSAqpA" resolve="ReportedError" />
                        <node concept="3cpWs3" id="7nkyKX7nmlE" role="37wK5m">
                          <node concept="37vLTw" id="7nkyKX7nmlF" role="3uHU7w">
                            <ref role="3cqZAo" node="7nkyKX7nmlh" resolve="details" />
                          </node>
                          <node concept="2OqwBi" id="7nkyKX7nmlJ" role="3uHU7B">
                            <node concept="37vLTw" id="7nkyKX7nmlK" role="2Oq$k0">
                              <ref role="3cqZAo" node="7nkyKX7nl0T" resolve="e" />
                            </node>
                            <node concept="liA8E" id="7nkyKX7nmlL" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7nkyKX7nrdm" role="3cqZAp" />
        <node concept="3cpWs6" id="7nkyKX7nru7" role="3cqZAp">
          <node concept="3K4zz7" id="7nkyKX7nru8" role="3cqZAk">
            <node concept="2YIFZM" id="7nkyKX7nru9" role="3K4E3e">
              <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7nkyKX7nrua" role="3K4GZi">
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
              <ref role="37wK5l" node="7Oc59RSFgim" resolve="FAIL" />
              <node concept="37vLTw" id="7nkyKX7nrub" role="37wK5m">
                <ref role="3cqZAo" node="7nkyKX7ng8Q" resolve="errors" />
              </node>
            </node>
            <node concept="2OqwBi" id="7nkyKX7nruc" role="3K4Cdx">
              <node concept="37vLTw" id="7nkyKX7nrud" role="2Oq$k0">
                <ref role="3cqZAo" node="7nkyKX7ng8Q" resolve="errors" />
              </node>
              <node concept="1v1jN8" id="7nkyKX7nrue" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSy_Bt" role="jymVt" />
    <node concept="3clFb_" id="5NuEpF1pL7f" role="jymVt">
      <property role="TrG5h" value="generateAllWithNoInput" />
      <node concept="37vLTG" id="3x8pcoFuNwM" role="3clF46">
        <property role="TrG5h" value="postProcess" />
        <node concept="10P_77" id="3x8pcoFuOpV" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5NuEpF1pL7k" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="5NuEpF1pL7l" role="1B3o_S" />
      <node concept="3clFbS" id="5NuEpF1pL7m" role="3clF47">
        <node concept="3cpWs8" id="5NuEpF1pL7n" role="3cqZAp">
          <node concept="3cpWsn" id="5NuEpF1pL7o" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="_YKpA" id="5NuEpF1pL7p" role="1tU5fm">
              <node concept="3uibUv" id="5NuEpF1pL7q" role="_ZDj9">
                <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
              </node>
            </node>
            <node concept="2ShNRf" id="5NuEpF1pL7r" role="33vP2m">
              <node concept="Tc6Ow" id="5NuEpF1pL7s" role="2ShVmc">
                <node concept="3uibUv" id="5NuEpF1pL7t" role="HW$YZ">
                  <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1pL7u" role="3cqZAp" />
        <node concept="3cpWs8" id="5NuEpF1qhgB" role="3cqZAp">
          <node concept="3cpWsn" id="5NuEpF1qhgC" role="3cpWs9">
            <property role="TrG5h" value="allTemplates" />
            <node concept="A3Dl8" id="5NuEpF1qhgD" role="1tU5fm">
              <node concept="1LlUBW" id="7t5VLKHaWTl" role="A3Ik2">
                <node concept="3uibUv" id="1ffsG7c4WcZ" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                </node>
                <node concept="3uibUv" id="7t5VLKHaZmN" role="1Lm7xW">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5NuEpF1qhgF" role="33vP2m">
              <node concept="37vLTw" id="5NuEpF1qhgG" role="2Oq$k0">
                <ref role="3cqZAo" node="5ntLU8GlznG" resolve="ruleTemplateCollection" />
              </node>
              <node concept="liA8E" id="5NuEpF1qhgH" role="2OqNvi">
                <ref role="37wK5l" node="5NuEpF1qn9x" resolve="allTemplatesWithNoInput" />
                <node concept="37vLTw" id="3x8pcoFuOQ9" role="37wK5m">
                  <ref role="3cqZAo" node="3x8pcoFuNwM" resolve="postProcess" />
                </node>
                <node concept="2ShNRf" id="5NuEpF1qhgJ" role="37wK5m">
                  <node concept="2i4dXS" id="5NuEpF1qhgK" role="2ShVmc">
                    <node concept="3uibUv" id="5NuEpF1qhgL" role="HW$YZ">
                      <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tIwzd1ImVB" role="3cqZAp">
          <node concept="1rXfSq" id="tIwzd1ImV_" role="3clFbG">
            <ref role="37wK5l" node="tIwzd1I3Xv" resolve="applyAndCollectRequired" />
            <node concept="37vLTw" id="tIwzd1I_8I" role="37wK5m">
              <ref role="3cqZAo" node="5NuEpF1qhgC" resolve="allTemplates" />
            </node>
            <node concept="10Nm6u" id="tIwzd1I_e6" role="37wK5m" />
            <node concept="37vLTw" id="tIwzd1I_sr" role="37wK5m">
              <ref role="3cqZAo" node="5NuEpF1pL7o" resolve="errors" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1qguT" role="3cqZAp" />
        <node concept="3cpWs6" id="5NuEpF1pL7I" role="3cqZAp">
          <node concept="3K4zz7" id="5NuEpF1pL7J" role="3cqZAk">
            <node concept="2YIFZM" id="5NuEpF1pL7K" role="3K4E3e">
              <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="5NuEpF1pL7L" role="3K4GZi">
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
              <ref role="37wK5l" node="7Oc59RSFgim" resolve="FAIL" />
              <node concept="37vLTw" id="5NuEpF1pL7M" role="37wK5m">
                <ref role="3cqZAo" node="5NuEpF1pL7o" resolve="errors" />
              </node>
            </node>
            <node concept="2OqwBi" id="5NuEpF1pL7N" role="3K4Cdx">
              <node concept="37vLTw" id="5NuEpF1pL7O" role="2Oq$k0">
                <ref role="3cqZAo" node="5NuEpF1pL7o" resolve="errors" />
              </node>
              <node concept="1v1jN8" id="5NuEpF1pL7P" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3cHjmmLLzBm" role="jymVt" />
    <node concept="3clFb_" id="12yN8DyNqcj" role="jymVt">
      <property role="TrG5h" value="generateAll" />
      <node concept="37vLTG" id="12yN8DyNqcH" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="12yN8DyNqcW" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7Oc59RSFzo8" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="12yN8DyNqcm" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyNqcn" role="3clF47">
        <node concept="3cpWs8" id="7Oc59RS_8eW" role="3cqZAp">
          <node concept="3cpWsn" id="7Oc59RS_8eX" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="_YKpA" id="7Oc59RS_8eO" role="1tU5fm">
              <node concept="3uibUv" id="7Oc59RSF$Ud" role="_ZDj9">
                <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
              </node>
            </node>
            <node concept="2ShNRf" id="7Oc59RS_8eY" role="33vP2m">
              <node concept="Tc6Ow" id="7Oc59RS_8eZ" role="2ShVmc">
                <node concept="3uibUv" id="7Oc59RSF_ME" role="HW$YZ">
                  <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2JQZWxFb3w_" role="3cqZAp">
          <node concept="3SKdUq" id="2JQZWxFb4lU" role="3SKWNk">
            <property role="3SKdUp" value="walk the AST and apply templates" />
          </node>
        </node>
        <node concept="3cpWs8" id="2JQZWxFb1vW" role="3cqZAp">
          <node concept="3cpWsn" id="2JQZWxFb1vX" role="3cpWs9">
            <property role="TrG5h" value="required_visited" />
            <node concept="1LlUBW" id="2JQZWxFb1vF" role="1tU5fm">
              <node concept="3vKaQO" id="2JQZWxFb1vU" role="1Lm7xW">
                <node concept="3Tqbb2" id="2JQZWxFb1vV" role="3O5elw" />
              </node>
              <node concept="3vKaQO" id="2JQZWxFb1vS" role="1Lm7xW">
                <node concept="3Tqbb2" id="2JQZWxFb1vT" role="3O5elw" />
              </node>
            </node>
            <node concept="1rXfSq" id="2JQZWxFb1vY" role="33vP2m">
              <ref role="37wK5l" node="tIwzd1LouZ" resolve="walk" />
              <node concept="37vLTw" id="2JQZWxFb1w0" role="37wK5m">
                <ref role="3cqZAo" node="7Oc59RS_8eX" resolve="errors" />
              </node>
              <node concept="37vLTw" id="2JQZWxFb1w1" role="37wK5m">
                <ref role="3cqZAo" node="12yN8DyNqcH" resolve="root" />
              </node>
              <node concept="3clFbT" id="2JQZWxFb1w2" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2JQZWxFb5kF" role="3cqZAp">
          <node concept="3SKdUq" id="2JQZWxFb6a2" role="3SKWNk">
            <property role="3SKdUp" value="process the required roots" />
          </node>
        </node>
        <node concept="3clFbF" id="tIwzd1MM29" role="3cqZAp">
          <node concept="1rXfSq" id="tIwzd1MM28" role="3clFbG">
            <ref role="37wK5l" node="tIwzd1MM22" resolve="generateRequired" />
            <node concept="37vLTw" id="2JQZWxFb1w3" role="37wK5m">
              <ref role="3cqZAo" node="2JQZWxFb1vX" resolve="required_visited" />
            </node>
            <node concept="37vLTw" id="tIwzd1MM27" role="37wK5m">
              <ref role="3cqZAo" node="7Oc59RS_8eX" resolve="errors" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1KGfg" role="3cqZAp" />
        <node concept="3cpWs6" id="7Oc59RS$Vdl" role="3cqZAp">
          <node concept="3K4zz7" id="7Oc59RS_Mb_" role="3cqZAk">
            <node concept="2YIFZM" id="7Oc59RSFpqp" role="3K4E3e">
              <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="7Oc59RSFuTk" role="3K4GZi">
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
              <ref role="37wK5l" node="7Oc59RSFgim" resolve="FAIL" />
              <node concept="37vLTw" id="7Oc59RSFvPE" role="37wK5m">
                <ref role="3cqZAo" node="7Oc59RS_8eX" resolve="errors" />
              </node>
            </node>
            <node concept="2OqwBi" id="7Oc59RS$WHm" role="3K4Cdx">
              <node concept="37vLTw" id="7Oc59RS$VQI" role="2Oq$k0">
                <ref role="3cqZAo" node="7Oc59RS_8eX" resolve="errors" />
              </node>
              <node concept="1v1jN8" id="7Oc59RS_0ar" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1LqJe" role="jymVt" />
    <node concept="3clFb_" id="3cHjmmLLyCb" role="jymVt">
      <property role="TrG5h" value="generateInterfacePart" />
      <node concept="37vLTG" id="3cHjmmLLyCc" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="3cHjmmLLyCd" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3cHjmmLLyCg" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="3cHjmmLLyCh" role="1B3o_S" />
      <node concept="3clFbS" id="3cHjmmLLyCi" role="3clF47">
        <node concept="3cpWs8" id="3cHjmmLLyCj" role="3cqZAp">
          <node concept="3cpWsn" id="3cHjmmLLyCk" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="_YKpA" id="3cHjmmLLyCl" role="1tU5fm">
              <node concept="3uibUv" id="3cHjmmLLyCm" role="_ZDj9">
                <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
              </node>
            </node>
            <node concept="2ShNRf" id="3cHjmmLLyCn" role="33vP2m">
              <node concept="Tc6Ow" id="3cHjmmLLyCo" role="2ShVmc">
                <node concept="3uibUv" id="3cHjmmLLyCp" role="HW$YZ">
                  <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2JQZWxFb7fN" role="3cqZAp">
          <node concept="3SKdUq" id="2JQZWxFb7fO" role="3SKWNk">
            <property role="3SKdUp" value="walk the AST and apply templates" />
          </node>
        </node>
        <node concept="3cpWs8" id="2JQZWxFb6p8" role="3cqZAp">
          <node concept="3cpWsn" id="2JQZWxFb6p9" role="3cpWs9">
            <property role="TrG5h" value="required_visited" />
            <node concept="1LlUBW" id="2JQZWxFb6oN" role="1tU5fm">
              <node concept="3vKaQO" id="2JQZWxFb6p0" role="1Lm7xW">
                <node concept="3Tqbb2" id="2JQZWxFb6p1" role="3O5elw" />
              </node>
              <node concept="3vKaQO" id="2JQZWxFb6p2" role="1Lm7xW">
                <node concept="3Tqbb2" id="2JQZWxFb6p3" role="3O5elw" />
              </node>
            </node>
            <node concept="1rXfSq" id="2JQZWxFb6pa" role="33vP2m">
              <ref role="37wK5l" node="tIwzd1LouZ" resolve="walk" />
              <node concept="37vLTw" id="2JQZWxFb6pc" role="37wK5m">
                <ref role="3cqZAo" node="3cHjmmLLyCk" resolve="errors" />
              </node>
              <node concept="37vLTw" id="2JQZWxFb6pd" role="37wK5m">
                <ref role="3cqZAo" node="3cHjmmLLyCc" resolve="root" />
              </node>
              <node concept="3clFbT" id="2JQZWxFb6pe" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2JQZWxFb9Ig" role="3cqZAp">
          <node concept="3SKdUq" id="2JQZWxFb9Ih" role="3SKWNk">
            <property role="3SKdUp" value="process the required roots" />
          </node>
        </node>
        <node concept="3clFbF" id="tIwzd1MUHp" role="3cqZAp">
          <node concept="1rXfSq" id="tIwzd1MUHq" role="3clFbG">
            <ref role="37wK5l" node="tIwzd1MM22" resolve="generateRequired" />
            <node concept="37vLTw" id="2JQZWxFb6pf" role="37wK5m">
              <ref role="3cqZAo" node="2JQZWxFb6p9" resolve="required_visited" />
            </node>
            <node concept="37vLTw" id="tIwzd1MUHt" role="37wK5m">
              <ref role="3cqZAo" node="3cHjmmLLyCk" resolve="errors" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1MTYF" role="3cqZAp" />
        <node concept="3cpWs6" id="3cHjmmLLyCE" role="3cqZAp">
          <node concept="3K4zz7" id="3cHjmmLLyCF" role="3cqZAk">
            <node concept="2YIFZM" id="3cHjmmLLyCG" role="3K4E3e">
              <ref role="37wK5l" node="7Oc59RSEjeq" resolve="OK" />
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2YIFZM" id="3cHjmmLLyCH" role="3K4GZi">
              <ref role="1Pybhc" node="7Oc59RSEjdb" resolve="Result" />
              <ref role="37wK5l" node="7Oc59RSFgim" resolve="FAIL" />
              <node concept="37vLTw" id="3cHjmmLLyCI" role="37wK5m">
                <ref role="3cqZAo" node="3cHjmmLLyCk" resolve="errors" />
              </node>
            </node>
            <node concept="2OqwBi" id="3cHjmmLLyCJ" role="3K4Cdx">
              <node concept="37vLTw" id="3cHjmmLLyCK" role="2Oq$k0">
                <ref role="3cqZAo" node="3cHjmmLLyCk" resolve="errors" />
              </node>
              <node concept="1v1jN8" id="3cHjmmLLyCL" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1MNCr" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1MM22" role="jymVt">
      <property role="TrG5h" value="generateRequired" />
      <node concept="3Tm6S6" id="tIwzd1MM23" role="1B3o_S" />
      <node concept="3cqZAl" id="tIwzd1MM24" role="3clF45" />
      <node concept="37vLTG" id="tIwzd1MM1I" role="3clF46">
        <property role="TrG5h" value="required_visited" />
        <node concept="1LlUBW" id="tIwzd1MM1J" role="1tU5fm">
          <node concept="3vKaQO" id="tIwzd1MM1K" role="1Lm7xW">
            <node concept="3Tqbb2" id="tIwzd1MM1L" role="3O5elw" />
          </node>
          <node concept="3vKaQO" id="tIwzd1MM1M" role="1Lm7xW">
            <node concept="3Tqbb2" id="tIwzd1MM1N" role="3O5elw" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="tIwzd1MM1Q" role="3clF46">
        <property role="TrG5h" value="errors" />
        <node concept="_YKpA" id="tIwzd1MM1R" role="1tU5fm">
          <node concept="3uibUv" id="tIwzd1MM1S" role="_ZDj9">
            <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="tIwzd1MM0J" role="3clF47">
        <node concept="3clFbH" id="tIwzd1MT39" role="3cqZAp" />
        <node concept="3cpWs8" id="tIwzd1MM0K" role="3cqZAp">
          <node concept="3cpWsn" id="tIwzd1MM0L" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="2hMVRd" id="tIwzd1MM0M" role="1tU5fm">
              <node concept="3Tqbb2" id="tIwzd1MM0N" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="tIwzd1MM0O" role="33vP2m">
              <node concept="2i4dXS" id="tIwzd1MM0P" role="2ShVmc">
                <node concept="3Tqbb2" id="tIwzd1MM0Q" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tIwzd1MM0R" role="3cqZAp">
          <node concept="2OqwBi" id="tIwzd1MM0S" role="3clFbG">
            <node concept="37vLTw" id="tIwzd1MM0T" role="2Oq$k0">
              <ref role="3cqZAo" node="tIwzd1MM0L" resolve="visited" />
            </node>
            <node concept="X8dFx" id="tIwzd1MM0U" role="2OqNvi">
              <node concept="1LFfDK" id="tIwzd1MM0V" role="25WWJ7">
                <node concept="3cmrfG" id="tIwzd1MM0W" role="1LF_Uc">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="tIwzd1MM1Z" role="1LFl5Q">
                  <ref role="3cqZAo" node="tIwzd1MM1I" resolve="required_visited" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1MM0Y" role="3cqZAp" />
        <node concept="3cpWs8" id="tIwzd1MM0Z" role="3cqZAp">
          <node concept="3cpWsn" id="tIwzd1MM10" role="3cpWs9">
            <property role="TrG5h" value="all_reqd" />
            <node concept="_YKpA" id="tIwzd1MM11" role="1tU5fm">
              <node concept="3Tqbb2" id="tIwzd1MM12" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="tIwzd1MM13" role="33vP2m">
              <node concept="2OqwBi" id="tIwzd1MM14" role="2Oq$k0">
                <node concept="2OqwBi" id="tIwzd1MM15" role="2Oq$k0">
                  <node concept="1LFfDK" id="tIwzd1MM16" role="2Oq$k0">
                    <node concept="3cmrfG" id="tIwzd1MM17" role="1LF_Uc">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="tIwzd1MM1X" role="1LFl5Q">
                      <ref role="3cqZAo" node="tIwzd1MM1I" resolve="required_visited" />
                    </node>
                  </node>
                  <node concept="1VAtEI" id="tIwzd1MM19" role="2OqNvi" />
                </node>
                <node concept="66VNe" id="tIwzd1MM1a" role="2OqNvi">
                  <node concept="37vLTw" id="tIwzd1MM1b" role="576Qk">
                    <ref role="3cqZAo" node="tIwzd1MM0L" resolve="visited" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="tIwzd1MM1c" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="tIwzd1MM1d" role="3cqZAp">
          <node concept="3clFbS" id="tIwzd1MM1e" role="2LFqv$">
            <node concept="3clFbF" id="tIwzd1MM1f" role="3cqZAp">
              <node concept="37vLTI" id="tIwzd1MM1g" role="3clFbG">
                <node concept="37vLTw" id="tIwzd1MM1U" role="37vLTJ">
                  <ref role="3cqZAo" node="tIwzd1MM1I" resolve="required_visited" />
                </node>
                <node concept="1rXfSq" id="tIwzd1MM1i" role="37vLTx">
                  <ref role="37wK5l" node="tIwzd1LKZY" resolve="walk" />
                  <node concept="37vLTw" id="tIwzd1MM1W" role="37wK5m">
                    <ref role="3cqZAo" node="tIwzd1MM1Q" resolve="errors" />
                  </node>
                  <node concept="37vLTw" id="tIwzd1MM1l" role="37wK5m">
                    <ref role="3cqZAo" node="tIwzd1MM10" resolve="all_reqd" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="tIwzd1MM1m" role="3cqZAp" />
            <node concept="3clFbF" id="tIwzd1MM1n" role="3cqZAp">
              <node concept="2OqwBi" id="tIwzd1MM1o" role="3clFbG">
                <node concept="37vLTw" id="tIwzd1MM1p" role="2Oq$k0">
                  <ref role="3cqZAo" node="tIwzd1MM0L" resolve="visited" />
                </node>
                <node concept="X8dFx" id="tIwzd1MM1q" role="2OqNvi">
                  <node concept="1LFfDK" id="tIwzd1MM1r" role="25WWJ7">
                    <node concept="3cmrfG" id="tIwzd1MM1s" role="1LF_Uc">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="37vLTw" id="tIwzd1MM1Y" role="1LFl5Q">
                      <ref role="3cqZAo" node="tIwzd1MM1I" resolve="required_visited" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="tIwzd1MM1u" role="3cqZAp">
              <node concept="37vLTI" id="tIwzd1MM1v" role="3clFbG">
                <node concept="37vLTw" id="tIwzd1MM1w" role="37vLTJ">
                  <ref role="3cqZAo" node="tIwzd1MM10" resolve="all_reqd" />
                </node>
                <node concept="2OqwBi" id="tIwzd1MM1x" role="37vLTx">
                  <node concept="2OqwBi" id="tIwzd1MM1y" role="2Oq$k0">
                    <node concept="2OqwBi" id="tIwzd1MM1z" role="2Oq$k0">
                      <node concept="1LFfDK" id="tIwzd1MM1$" role="2Oq$k0">
                        <node concept="3cmrfG" id="tIwzd1MM1_" role="1LF_Uc">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="tIwzd1MM1T" role="1LFl5Q">
                          <ref role="3cqZAo" node="tIwzd1MM1I" resolve="required_visited" />
                        </node>
                      </node>
                      <node concept="1VAtEI" id="tIwzd1MM1B" role="2OqNvi" />
                    </node>
                    <node concept="66VNe" id="tIwzd1MM1C" role="2OqNvi">
                      <node concept="37vLTw" id="tIwzd1MM1D" role="576Qk">
                        <ref role="3cqZAo" node="tIwzd1MM0L" resolve="visited" />
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="tIwzd1MM1E" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="tIwzd1MM1F" role="2$JKZa">
            <node concept="37vLTw" id="tIwzd1MM1G" role="2Oq$k0">
              <ref role="3cqZAo" node="tIwzd1MM10" resolve="all_reqd" />
            </node>
            <node concept="3GX2aA" id="tIwzd1MM1H" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RS_GdO" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1LouZ" role="jymVt">
      <property role="TrG5h" value="walk" />
      <node concept="3Tm6S6" id="tIwzd1Lov0" role="1B3o_S" />
      <node concept="1LlUBW" id="tIwzd1Lov1" role="3clF45">
        <node concept="3vKaQO" id="tIwzd1Lov2" role="1Lm7xW">
          <node concept="3Tqbb2" id="tIwzd1Lov3" role="3O5elw" />
        </node>
        <node concept="3vKaQO" id="tIwzd1Lov4" role="1Lm7xW">
          <node concept="3Tqbb2" id="tIwzd1Lov5" role="3O5elw" />
        </node>
      </node>
      <node concept="37vLTG" id="tIwzd1LouH" role="3clF46">
        <property role="TrG5h" value="errors" />
        <node concept="_YKpA" id="tIwzd1LouI" role="1tU5fm">
          <node concept="3uibUv" id="tIwzd1LouJ" role="_ZDj9">
            <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="tIwzd1LouK" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="tIwzd1LouL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="tIwzd1Luww" role="3clF46">
        <property role="TrG5h" value="interfaceOnly" />
        <node concept="10P_77" id="tIwzd1Lvg1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="tIwzd1Lou5" role="3clF47">
        <node concept="3clFbH" id="tIwzd1Lwfh" role="3cqZAp" />
        <node concept="3cpWs8" id="tIwzd1Lou8" role="3cqZAp">
          <node concept="3cpWsn" id="tIwzd1Lou9" role="3cpWs9">
            <property role="TrG5h" value="walker" />
            <node concept="3uibUv" id="tIwzd1Loua" role="1tU5fm">
              <ref role="3uigEE" node="12yN8DyNqdl" resolve="NodeWalker" />
              <node concept="1LlUBW" id="tIwzd1Loub" role="11_B2D">
                <node concept="3vKaQO" id="tIwzd1Louc" role="1Lm7xW">
                  <node concept="3Tqbb2" id="tIwzd1Loud" role="3O5elw" />
                </node>
                <node concept="3vKaQO" id="tIwzd1Loue" role="1Lm7xW">
                  <node concept="3Tqbb2" id="tIwzd1Louf" role="3O5elw" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="tIwzd1Loug" role="33vP2m">
              <node concept="1pGfFk" id="tIwzd1Louh" role="2ShVmc">
                <ref role="37wK5l" node="12yN8DyNqja" resolve="NodeWalker" />
                <node concept="2ShNRf" id="tIwzd1Loui" role="37wK5m">
                  <node concept="1pGfFk" id="tIwzd1Louj" role="2ShVmc">
                    <ref role="37wK5l" node="5ntLU8GlTO6" resolve="TypecheckingRuleGenerator.TemplateApplicator" />
                    <node concept="37vLTw" id="tIwzd1LouM" role="37wK5m">
                      <ref role="3cqZAo" node="tIwzd1LouH" resolve="errors" />
                    </node>
                  </node>
                </node>
                <node concept="1LlUBW" id="tIwzd1Loum" role="1pMfVU">
                  <node concept="3vKaQO" id="tIwzd1Loun" role="1Lm7xW">
                    <node concept="3Tqbb2" id="tIwzd1Louo" role="3O5elw" />
                  </node>
                  <node concept="3vKaQO" id="tIwzd1Loup" role="1Lm7xW">
                    <node concept="3Tqbb2" id="tIwzd1Louq" role="3O5elw" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1Lour" role="3cqZAp" />
        <node concept="3cpWs6" id="tIwzd1LouD" role="3cqZAp">
          <node concept="2OqwBi" id="tIwzd1LJw_" role="3cqZAk">
            <node concept="37vLTw" id="tIwzd1LJwA" role="2Oq$k0">
              <ref role="3cqZAo" node="tIwzd1Lou9" resolve="walker" />
            </node>
            <node concept="liA8E" id="tIwzd1LJwB" role="2OqNvi">
              <ref role="37wK5l" node="12yN8DyNqZ$" resolve="deepWalk" />
              <node concept="37vLTw" id="tIwzd1LJwC" role="37wK5m">
                <ref role="3cqZAo" node="tIwzd1LouK" resolve="root" />
              </node>
              <node concept="37vLTw" id="tIwzd1LJwD" role="37wK5m">
                <ref role="3cqZAo" node="tIwzd1Luww" resolve="interfaceOnly" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5NuEpF1pMvG" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1LKZY" role="jymVt">
      <property role="TrG5h" value="walk" />
      <node concept="3Tm6S6" id="tIwzd1LKZZ" role="1B3o_S" />
      <node concept="1LlUBW" id="tIwzd1LL00" role="3clF45">
        <node concept="3vKaQO" id="tIwzd1LL01" role="1Lm7xW">
          <node concept="3Tqbb2" id="tIwzd1LL02" role="3O5elw" />
        </node>
        <node concept="3vKaQO" id="tIwzd1LL03" role="1Lm7xW">
          <node concept="3Tqbb2" id="tIwzd1LL04" role="3O5elw" />
        </node>
      </node>
      <node concept="37vLTG" id="tIwzd1LL07" role="3clF46">
        <property role="TrG5h" value="errors" />
        <node concept="_YKpA" id="tIwzd1LL08" role="1tU5fm">
          <node concept="3uibUv" id="tIwzd1LL09" role="_ZDj9">
            <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="tIwzd1LL0a" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="tIwzd1LOMY" role="1tU5fm">
          <node concept="3Tqbb2" id="tIwzd1LPAK" role="A3Ik2" />
        </node>
      </node>
      <node concept="3clFbS" id="tIwzd1LL0e" role="3clF47">
        <node concept="3clFbH" id="tIwzd1LL0f" role="3cqZAp" />
        <node concept="3cpWs8" id="tIwzd1LL0g" role="3cqZAp">
          <node concept="3cpWsn" id="tIwzd1LL0h" role="3cpWs9">
            <property role="TrG5h" value="walker" />
            <node concept="3uibUv" id="tIwzd1LL0i" role="1tU5fm">
              <ref role="3uigEE" node="12yN8DyNqdl" resolve="NodeWalker" />
              <node concept="1LlUBW" id="tIwzd1LL0j" role="11_B2D">
                <node concept="3vKaQO" id="tIwzd1LL0k" role="1Lm7xW">
                  <node concept="3Tqbb2" id="tIwzd1LL0l" role="3O5elw" />
                </node>
                <node concept="3vKaQO" id="tIwzd1LL0m" role="1Lm7xW">
                  <node concept="3Tqbb2" id="tIwzd1LL0n" role="3O5elw" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="tIwzd1LL0o" role="33vP2m">
              <node concept="1pGfFk" id="tIwzd1LL0p" role="2ShVmc">
                <ref role="37wK5l" node="12yN8DyNqja" resolve="NodeWalker" />
                <node concept="2ShNRf" id="tIwzd1LL0q" role="37wK5m">
                  <node concept="1pGfFk" id="tIwzd1LL0r" role="2ShVmc">
                    <ref role="37wK5l" node="5ntLU8GlTO6" resolve="TypecheckingRuleGenerator.TemplateApplicator" />
                    <node concept="37vLTw" id="tIwzd1LL0t" role="37wK5m">
                      <ref role="3cqZAo" node="tIwzd1LL07" resolve="errors" />
                    </node>
                  </node>
                </node>
                <node concept="1LlUBW" id="tIwzd1LL0u" role="1pMfVU">
                  <node concept="3vKaQO" id="tIwzd1LL0v" role="1Lm7xW">
                    <node concept="3Tqbb2" id="tIwzd1LL0w" role="3O5elw" />
                  </node>
                  <node concept="3vKaQO" id="tIwzd1LL0x" role="1Lm7xW">
                    <node concept="3Tqbb2" id="tIwzd1LL0y" role="3O5elw" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1LL0z" role="3cqZAp" />
        <node concept="3cpWs6" id="tIwzd1LL0$" role="3cqZAp">
          <node concept="2OqwBi" id="tIwzd1LL0_" role="3cqZAk">
            <node concept="37vLTw" id="tIwzd1LL0A" role="2Oq$k0">
              <ref role="3cqZAo" node="tIwzd1LL0h" resolve="walker" />
            </node>
            <node concept="liA8E" id="tIwzd1LL0B" role="2OqNvi">
              <ref role="37wK5l" node="tIwzd1L9h1" resolve="surfaceWalk" />
              <node concept="37vLTw" id="tIwzd1LL0C" role="37wK5m">
                <ref role="3cqZAo" node="tIwzd1LL0a" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1LKZX" role="jymVt" />
    <node concept="3clFb_" id="5ntLU8GlSnU" role="jymVt">
      <property role="TrG5h" value="applyTemplate" />
      <node concept="3Tm6S6" id="5ntLU8GlSnV" role="1B3o_S" />
      <node concept="A3Dl8" id="5MHpiylC8T$" role="3clF45">
        <node concept="3uibUv" id="5MHpiylCa5h" role="A3Ik2">
          <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="5ntLU8GlSnJ" role="3clF46">
        <property role="TrG5h" value="tpl" />
        <node concept="3uibUv" id="1ffsG7c51iR" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="5ntLU8GlSnL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5ntLU8GlSnM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7t5VLKHaEJH" role="3clF46">
        <property role="TrG5h" value="boundParam" />
        <node concept="3uibUv" id="7t5VLKHaGkr" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5NuEpF1q7GC" role="3clF46">
        <property role="TrG5h" value="errors" />
        <node concept="3vKaQO" id="5NuEpF1q8KB" role="1tU5fm">
          <node concept="3uibUv" id="5NuEpF1q96L" role="3O5elw">
            <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5ntLU8GlSnC" role="3clF47">
        <node concept="3clFbH" id="tIwzd1IjDd" role="3cqZAp" />
        <node concept="SfApY" id="7Oc59RSA9rg" role="3cqZAp">
          <node concept="3clFbS" id="7Oc59RSA9ri" role="SfCbr">
            <node concept="3cpWs6" id="5MHpiyl_Uhz" role="3cqZAp">
              <node concept="2OqwBi" id="5ntLU8GlSnE" role="3cqZAk">
                <node concept="37vLTw" id="5ntLU8GlSnQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                </node>
                <node concept="liA8E" id="5ntLU8GlSnG" role="2OqNvi">
                  <ref role="37wK5l" to="i348:1ffsG7bWCVq" resolve="apply" />
                  <node concept="37vLTw" id="5ntLU8GlSnP" role="37wK5m">
                    <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="7t5VLKHaIFO" role="37wK5m">
                    <ref role="3cqZAo" node="7t5VLKHaEJH" resolve="boundParam" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7Oc59RSFW0W" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="7Oc59RSA9rj" role="TEbGg">
            <node concept="3cpWsn" id="7Oc59RSA9rl" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="7Oc59RSA9CO" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
              </node>
            </node>
            <node concept="3clFbS" id="7Oc59RSA9rp" role="TDEfX">
              <node concept="3cpWs8" id="2DKqMqOkrp4" role="3cqZAp">
                <node concept="3cpWsn" id="2DKqMqOkrp7" role="3cpWs9">
                  <property role="TrG5h" value="details" />
                  <node concept="17QB3L" id="2DKqMqOkrp2" role="1tU5fm" />
                  <node concept="3K4zz7" id="2DKqMqOksLk" role="33vP2m">
                    <node concept="Xl_RD" id="2DKqMqOksZr" role="3K4GZi" />
                    <node concept="3y3z36" id="2DKqMqOkstt" role="3K4Cdx">
                      <node concept="10Nm6u" id="2DKqMqOksA7" role="3uHU7w" />
                      <node concept="37vLTw" id="2DKqMqOkssf" role="3uHU7B">
                        <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="2DKqMqOksM4" role="3K4E3e">
                      <node concept="2OqwBi" id="2DKqMqOksM5" role="3uHU7w">
                        <node concept="2JrnkZ" id="2DKqMqOksM6" role="2Oq$k0">
                          <node concept="37vLTw" id="2DKqMqOksM7" role="2JrQYb">
                            <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2DKqMqOksM8" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="2DKqMqOksM9" role="3uHU7B">
                        <node concept="3cpWs3" id="2DKqMqOktGz" role="3uHU7B">
                          <node concept="Xl_RD" id="2DKqMqOktQj" role="3uHU7B">
                            <property role="Xl_RC" value=" to " />
                          </node>
                          <node concept="2OqwBi" id="2DKqMqOksMg" role="3uHU7w">
                            <node concept="37vLTw" id="2DKqMqOksMh" role="2Oq$k0">
                              <ref role="3cqZAo" node="5ntLU8GlSnL" resolve="node" />
                            </node>
                            <node concept="2qgKlT" id="2DKqMqOksMi" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2DKqMqOksMj" role="3uHU7w">
                          <property role="Xl_RC" value="@" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7Oc59RSG8Vt" role="3cqZAp">
                <node concept="2OqwBi" id="7Oc59RSG9XO" role="3clFbG">
                  <node concept="37vLTw" id="5NuEpF1qaLL" role="2Oq$k0">
                    <ref role="3cqZAo" node="5NuEpF1q7GC" resolve="errors" />
                  </node>
                  <node concept="TSZUe" id="7Oc59RSGbRU" role="2OqNvi">
                    <node concept="2ShNRf" id="7Oc59RSFTze" role="25WWJ7">
                      <node concept="1pGfFk" id="7Oc59RSFTzf" role="2ShVmc">
                        <ref role="37wK5l" node="7Oc59RSAq_i" resolve="ReportedError" />
                        <node concept="3cpWs3" id="2DKqMqOkund" role="37wK5m">
                          <node concept="37vLTw" id="2DKqMqOkuzR" role="3uHU7w">
                            <ref role="3cqZAo" node="2DKqMqOkrp7" resolve="details" />
                          </node>
                          <node concept="3cpWs3" id="7Oc59RSFTzg" role="3uHU7B">
                            <node concept="3cpWs3" id="7Oc59RSFTzi" role="3uHU7B">
                              <node concept="Xl_RD" id="7Oc59RSFTzj" role="3uHU7B">
                                <property role="Xl_RC" value="Error applying template (" />
                              </node>
                              <node concept="37vLTw" id="7Oc59RSFTzk" role="3uHU7w">
                                <ref role="3cqZAo" node="5ntLU8GlSnJ" resolve="tpl" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="7Oc59RSFTzh" role="3uHU7w">
                              <property role="Xl_RC" value=")" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="7Oc59RSFTzl" role="37wK5m">
                          <ref role="3cqZAo" node="7Oc59RSA9rl" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6qJjpCjrd90" role="3cqZAp" />
              <node concept="3cpWs6" id="5MHpiylA5DD" role="3cqZAp">
                <node concept="10Nm6u" id="5MHpiym2fMR" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8Glzbb" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1I3Xv" role="jymVt">
      <property role="TrG5h" value="applyAndCollectRequired" />
      <node concept="3Tm6S6" id="tIwzd1I3Xw" role="1B3o_S" />
      <node concept="3vKaQO" id="tIwzd1JBnD" role="3clF45">
        <node concept="3Tqbb2" id="tIwzd1JBnF" role="3O5elw" />
      </node>
      <node concept="37vLTG" id="tIwzd1I3Xm" role="3clF46">
        <property role="TrG5h" value="allTemplates" />
        <node concept="A3Dl8" id="tIwzd1I3Xn" role="1tU5fm">
          <node concept="1LlUBW" id="7t5VLKHawYT" role="A3Ik2">
            <node concept="3uibUv" id="1ffsG7c4WJ7" role="1Lm7xW">
              <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
            </node>
            <node concept="3uibUv" id="7t5VLKHayek" role="1Lm7xW">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="tIwzd1I3Xp" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="tIwzd1I3Xq" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="tIwzd1I5Br" role="3clF46">
        <property role="TrG5h" value="errors" />
        <node concept="3vKaQO" id="tIwzd1I5Vt" role="1tU5fm">
          <node concept="3uibUv" id="tIwzd1I5YZ" role="3O5elw">
            <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="tIwzd1I3Wv" role="3clF47">
        <node concept="3clFbH" id="tIwzd1Ij2S" role="3cqZAp" />
        <node concept="3cpWs8" id="tIwzd1IbDQ" role="3cqZAp">
          <node concept="3cpWsn" id="tIwzd1IbDT" role="3cpWs9">
            <property role="TrG5h" value="reqd" />
            <node concept="2hMVRd" id="tIwzd1IbDM" role="1tU5fm">
              <node concept="3Tqbb2" id="tIwzd1IbMS" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="tIwzd1Ic2T" role="33vP2m">
              <node concept="2i4dXS" id="tIwzd1Ic1R" role="2ShVmc">
                <node concept="3Tqbb2" id="tIwzd1Ic1S" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1Ibcv" role="3cqZAp" />
        <node concept="1DcWWT" id="tIwzd1I3Ww" role="3cqZAp">
          <node concept="3clFbS" id="tIwzd1I3Wx" role="2LFqv$">
            <node concept="3cpWs8" id="7t5VLKHaCPl" role="3cqZAp">
              <node concept="3cpWsn" id="7t5VLKHaCPm" role="3cpWs9">
                <property role="TrG5h" value="boundParam" />
                <node concept="3uibUv" id="7t5VLKHaCP5" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="1LFfDK" id="7t5VLKHaCPn" role="33vP2m">
                  <node concept="3cmrfG" id="7t5VLKHaCPo" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="7t5VLKHaCPp" role="1LFl5Q">
                    <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="tpl" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7t5VLKHaDXn" role="3cqZAp" />
            <node concept="2Gpval" id="tIwzd1I3Wy" role="3cqZAp">
              <node concept="3clFbS" id="tIwzd1I3Wz" role="2LFqv$">
                <node concept="3clFbJ" id="7nkyKX7muZc" role="3cqZAp">
                  <node concept="3clFbS" id="7nkyKX7muZe" role="3clFbx">
                    <node concept="3clFbF" id="7nkyKX7mw8C" role="3cqZAp">
                      <node concept="2OqwBi" id="7nkyKX7mwfr" role="3clFbG">
                        <node concept="37vLTw" id="7nkyKX7mw8A" role="2Oq$k0">
                          <ref role="3cqZAo" node="7nkyKX7m8kI" resolve="main" />
                        </node>
                        <node concept="liA8E" id="7nkyKX7mwk9" role="2OqNvi">
                          <ref role="37wK5l" to="nz6g:77AxcO4ZwMR" resolve="merge" />
                          <node concept="2GrUjf" id="7nkyKX7mwtE" role="37wK5m">
                            <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3N13vt" id="7nkyKX7mwHG" role="3cqZAp" />
                  </node>
                  <node concept="3fqX7Q" id="7nkyKX7mvS7" role="3clFbw">
                    <node concept="2OqwBi" id="7nkyKX7mvS9" role="3fr31v">
                      <node concept="2GrUjf" id="7nkyKX7mvSa" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                      </node>
                      <node concept="liA8E" id="7nkyKX7mvSb" role="2OqNvi">
                        <ref role="37wK5l" to="nz6g:7nkyKX7mcq7" resolve="hasHead" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7nkyKX7mwTu" role="3cqZAp" />
                <node concept="SfApY" id="tIwzd1I3W$" role="3cqZAp">
                  <node concept="3clFbS" id="tIwzd1I3W_" role="SfCbr">
                    <node concept="3cpWs8" id="tIwzd1I3WA" role="3cqZAp">
                      <node concept="3cpWsn" id="tIwzd1I3WB" role="3cpWs9">
                        <property role="TrG5h" value="rule" />
                        <node concept="3uibUv" id="tIwzd1I3WC" role="1tU5fm">
                          <ref role="3uigEE" to="rchb:7eGEHDlc$9y" resolve="Rule" />
                        </node>
                        <node concept="2OqwBi" id="tIwzd1I3WD" role="33vP2m">
                          <node concept="2GrUjf" id="tIwzd1I3WE" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="tIwzd1I3Xb" resolve="builder" />
                          </node>
                          <node concept="liA8E" id="tIwzd1I3WF" role="2OqNvi">
                            <ref role="37wK5l" to="nz6g:7eGEHDlc$ck" resolve="toRule" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="tIwzd1I3WG" role="3cqZAp">
                      <node concept="2OqwBi" id="tIwzd1I3WH" role="3clFbG">
                        <node concept="37vLTw" id="tIwzd1I3WI" role="2Oq$k0">
                          <ref role="3cqZAo" node="78CwJJcPpPx" resolve="programBuilder" />
                        </node>
                        <node concept="liA8E" id="tIwzd1I3WJ" role="2OqNvi">
                          <ref role="37wK5l" to="7n8k:7eGEHDlcF9o" resolve="addRule" />
                          <node concept="37vLTw" id="tIwzd1I3WK" role="37wK5m">
                            <ref role="3cqZAo" node="tIwzd1I3WB" resolve="rule" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="tIwzd1I3WL" role="3cqZAp" />
                  </node>
                  <node concept="TDmWw" id="tIwzd1I3WM" role="TEbGg">
                    <node concept="3clFbS" id="tIwzd1I3WN" role="TDEfX">
                      <node concept="3cpWs8" id="2DKqMqOkbMY" role="3cqZAp">
                        <node concept="3cpWsn" id="2DKqMqOkbN1" role="3cpWs9">
                          <property role="TrG5h" value="details" />
                          <node concept="17QB3L" id="2DKqMqOkbMW" role="1tU5fm" />
                          <node concept="3K4zz7" id="2DKqMqOkc_J" role="33vP2m">
                            <node concept="Xl_RD" id="2DKqMqOkdoG" role="3K4GZi">
                              <property role="Xl_RC" value="" />
                            </node>
                            <node concept="3y3z36" id="2DKqMqOkcjZ" role="3K4Cdx">
                              <node concept="10Nm6u" id="2DKqMqOkcsQ" role="3uHU7w" />
                              <node concept="37vLTw" id="2DKqMqOkci$" role="3uHU7B">
                                <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                              </node>
                            </node>
                            <node concept="3cpWs3" id="2DKqMqOkcAG" role="3K4E3e">
                              <node concept="2OqwBi" id="2DKqMqOkcAH" role="3uHU7w">
                                <node concept="2JrnkZ" id="2DKqMqOkcAI" role="2Oq$k0">
                                  <node concept="37vLTw" id="2DKqMqOkcAJ" role="2JrQYb">
                                    <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2DKqMqOkcAK" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="2DKqMqOkcAL" role="3uHU7B">
                                <node concept="3cpWs3" id="2DKqMqOkcAM" role="3uHU7B">
                                  <node concept="Xl_RD" id="2DKqMqOkcB1" role="3uHU7B">
                                    <property role="Xl_RC" value=" triggered by " />
                                  </node>
                                  <node concept="2OqwBi" id="2DKqMqOkcB2" role="3uHU7w">
                                    <node concept="37vLTw" id="2DKqMqOkcB3" role="2Oq$k0">
                                      <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                                    </node>
                                    <node concept="2qgKlT" id="2DKqMqOkcB4" role="2OqNvi">
                                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="2DKqMqOkcB5" role="3uHU7w">
                                  <property role="Xl_RC" value="@" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="tIwzd1I3WO" role="3cqZAp">
                        <node concept="2OqwBi" id="tIwzd1I3WP" role="3clFbG">
                          <node concept="37vLTw" id="tIwzd1I3WQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="tIwzd1I5Br" resolve="errors" />
                          </node>
                          <node concept="TSZUe" id="tIwzd1I3WR" role="2OqNvi">
                            <node concept="2ShNRf" id="tIwzd1I3WS" role="25WWJ7">
                              <node concept="1pGfFk" id="tIwzd1I3WT" role="2ShVmc">
                                <ref role="37wK5l" node="7Oc59RSAqpA" resolve="ReportedError" />
                                <node concept="3cpWs3" id="2DKqMqOkeoC" role="37wK5m">
                                  <node concept="37vLTw" id="2DKqMqOkeEh" role="3uHU7w">
                                    <ref role="3cqZAo" node="2DKqMqOkbN1" resolve="details" />
                                  </node>
                                  <node concept="3cpWs3" id="tIwzd1I3WU" role="3uHU7B">
                                    <node concept="3cpWs3" id="tIwzd1I3WW" role="3uHU7B">
                                      <node concept="3cpWs3" id="tIwzd1I3WX" role="3uHU7B">
                                        <node concept="2OqwBi" id="tIwzd1I3WY" role="3uHU7B">
                                          <node concept="37vLTw" id="tIwzd1I3WZ" role="2Oq$k0">
                                            <ref role="3cqZAo" node="tIwzd1I3X5" resolve="e" />
                                          </node>
                                          <node concept="liA8E" id="tIwzd1I3X0" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="tIwzd1I3X1" role="3uHU7w">
                                          <property role="Xl_RC" value="(" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="tIwzd1I3X2" role="3uHU7w">
                                        <node concept="1LFfDK" id="7t5VLKHaPhv" role="2Oq$k0">
                                          <node concept="3cmrfG" id="7t5VLKHaPxj" role="1LF_Uc">
                                            <property role="3cmrfH" value="0" />
                                          </node>
                                          <node concept="37vLTw" id="tIwzd1I3X3" role="1LFl5Q">
                                            <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="tpl" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="tIwzd1I3X4" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="tIwzd1I3WV" role="3uHU7w">
                                      <property role="Xl_RC" value=")" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="tIwzd1I3X5" role="TDEfY">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="tIwzd1I3X6" role="1tU5fm">
                        <ref role="3uigEE" to="rchb:7Oc59RS$wKP" resolve="InvalidRuleException" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="tIwzd1I3X7" role="2GsD0m">
                <ref role="37wK5l" node="5ntLU8GlSnU" resolve="applyTemplate" />
                <node concept="1LFfDK" id="7t5VLKHaAPr" role="37wK5m">
                  <node concept="3cmrfG" id="7t5VLKHaB21" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="tIwzd1I3X8" role="1LFl5Q">
                    <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="tpl" />
                  </node>
                </node>
                <node concept="37vLTw" id="tIwzd1I3Xr" role="37wK5m">
                  <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                </node>
                <node concept="37vLTw" id="7t5VLKHaKBa" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKHaCPm" resolve="boundParam" />
                </node>
                <node concept="37vLTw" id="tIwzd1I3Xa" role="37wK5m">
                  <ref role="3cqZAo" node="tIwzd1I5Br" resolve="errors" />
                </node>
              </node>
              <node concept="2GrKxI" id="tIwzd1I3Xb" role="2Gsz3X">
                <property role="TrG5h" value="builder" />
              </node>
            </node>
            <node concept="3clFbH" id="tIwzd2q_BT" role="3cqZAp" />
            <node concept="3clFbF" id="tIwzd1IckP" role="3cqZAp">
              <node concept="2OqwBi" id="tIwzd1IcEc" role="3clFbG">
                <node concept="37vLTw" id="tIwzd1IckN" role="2Oq$k0">
                  <ref role="3cqZAo" node="tIwzd1IbDT" resolve="reqd" />
                </node>
                <node concept="X8dFx" id="tIwzd1IefT" role="2OqNvi">
                  <node concept="2OqwBi" id="tIwzd1Ifxb" role="25WWJ7">
                    <node concept="1LFfDK" id="7t5VLKHaPYp" role="2Oq$k0">
                      <node concept="3cmrfG" id="7t5VLKHaQFA" role="1LF_Uc">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="tIwzd1IeSJ" role="1LFl5Q">
                        <ref role="3cqZAo" node="tIwzd1I3Xj" resolve="tpl" />
                      </node>
                    </node>
                    <node concept="liA8E" id="tIwzd1Igsq" role="2OqNvi">
                      <ref role="37wK5l" to="i348:2q0gzCFLe4l" resolve="required" />
                      <node concept="37vLTw" id="tIwzd1Z9kY" role="37wK5m">
                        <ref role="3cqZAo" node="tIwzd1I3Xp" resolve="node" />
                      </node>
                      <node concept="37vLTw" id="2q0gzCFMiDZ" role="37wK5m">
                        <ref role="3cqZAo" node="7t5VLKHaCPm" resolve="boundParam" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="tIwzd1I3Xj" role="1Duv9x">
            <property role="TrG5h" value="tpl" />
            <node concept="1LlUBW" id="7t5VLKHazo3" role="1tU5fm">
              <node concept="3uibUv" id="1ffsG7c4Zfy" role="1Lm7xW">
                <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
              </node>
              <node concept="3uibUv" id="7t5VLKHa_uS" role="1Lm7xW">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="tIwzd1I3Xs" role="1DdaDG">
            <ref role="3cqZAo" node="tIwzd1I3Xm" resolve="allTemplates" />
          </node>
        </node>
        <node concept="3clFbH" id="7nkyKX7n9UN" role="3cqZAp" />
        <node concept="3clFbF" id="tIwzd1Ii5C" role="3cqZAp">
          <node concept="37vLTw" id="tIwzd1Ii5A" role="3clFbG">
            <ref role="3cqZAo" node="tIwzd1IbDT" resolve="reqd" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7nkyKX7nb0M" role="jymVt" />
    <node concept="312cEu" id="5ntLU8Glzc7" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TemplateApplicator" />
      <node concept="2tJIrI" id="5ntLU8Glzf8" role="jymVt" />
      <node concept="3clFbW" id="5ntLU8GlTO6" role="jymVt">
        <node concept="3cqZAl" id="5ntLU8GlTO8" role="3clF45" />
        <node concept="3Tm6S6" id="5ntLU8GlTO9" role="1B3o_S" />
        <node concept="3clFbS" id="5ntLU8GlTOa" role="3clF47">
          <node concept="3clFbF" id="7Oc59RS_6Wb" role="3cqZAp">
            <node concept="37vLTI" id="7Oc59RS_7Ej" role="3clFbG">
              <node concept="37vLTw" id="7Oc59RS_7Nz" role="37vLTx">
                <ref role="3cqZAo" node="7Oc59RS_5y5" resolve="errors" />
              </node>
              <node concept="2OqwBi" id="7Oc59RS_6Zh" role="37vLTJ">
                <node concept="Xjq3P" id="7Oc59RS_6W9" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Oc59RS_7h3" role="2OqNvi">
                  <ref role="2Oxat5" node="7Oc59RS$NXD" resolve="errors" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7Oc59RS_5y5" role="3clF46">
          <property role="TrG5h" value="errors" />
          <node concept="3vKaQO" id="7Oc59RS_5Ix" role="1tU5fm">
            <node concept="3uibUv" id="7Oc59RSFmYR" role="3O5elw">
              <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5ntLU8Gl$$1" role="jymVt" />
      <node concept="3clFb_" id="5ntLU8GlzgF" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="doAction" />
        <node concept="37vLTG" id="5ntLU8GlzgG" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="5ntLU8GlzgH" role="1tU5fm" />
        </node>
        <node concept="3Tm1VV" id="5ntLU8GlzgJ" role="1B3o_S" />
        <node concept="3clFbS" id="5ntLU8GlzgL" role="3clF47">
          <node concept="3cpWs8" id="5ntLU8GlzSI" role="3cqZAp">
            <node concept="3cpWsn" id="5ntLU8GlzSJ" role="3cpWs9">
              <property role="TrG5h" value="allTemplates" />
              <node concept="A3Dl8" id="5ntLU8GlzSt" role="1tU5fm">
                <node concept="1LlUBW" id="7t5VLKHavfN" role="A3Ik2">
                  <node concept="3uibUv" id="1ffsG7c5hrm" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  </node>
                  <node concept="3uibUv" id="7t5VLKHaw07" role="1Lm7xW">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5ntLU8GlzSK" role="33vP2m">
                <node concept="37vLTw" id="5ntLU8GlzSL" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ntLU8GlznG" resolve="ruleTemplateCollection" />
                </node>
                <node concept="liA8E" id="5ntLU8GlzSM" role="2OqNvi">
                  <ref role="37wK5l" node="6fdr4UgfuGk" resolve="allTemplates" />
                  <node concept="37vLTw" id="5ntLU8GlzSN" role="37wK5m">
                    <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                  </node>
                  <node concept="2ShNRf" id="5ntLU8GlzSO" role="37wK5m">
                    <node concept="2i4dXS" id="5ntLU8GlzSP" role="2ShVmc">
                      <node concept="3uibUv" id="5ntLU8GlzSQ" role="HW$YZ">
                        <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5ntLU8GlzY6" role="3cqZAp" />
          <node concept="3cpWs8" id="tIwzd1Kh_Q" role="3cqZAp">
            <node concept="3cpWsn" id="tIwzd1Kh_R" role="3cpWs9">
              <property role="TrG5h" value="singleton" />
              <node concept="3vKaQO" id="tIwzd1KibV" role="1tU5fm">
                <node concept="3Tqbb2" id="tIwzd1KibX" role="3O5elw" />
              </node>
              <node concept="2ShNRf" id="tIwzd1Kh_S" role="33vP2m">
                <node concept="Tc6Ow" id="tIwzd1Kh_T" role="2ShVmc">
                  <node concept="3Tqbb2" id="tIwzd1Kh_U" role="HW$YZ" />
                  <node concept="37vLTw" id="tIwzd1Kh_V" role="HW$Y0">
                    <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="tIwzd1JpeR" role="3cqZAp">
            <node concept="1Ls8ON" id="tIwzd1JpeP" role="3clFbG">
              <node concept="1rXfSq" id="tIwzd1I3X_" role="1Lso8e">
                <ref role="37wK5l" node="tIwzd1I3Xv" resolve="applyAndCollectRequired" />
                <node concept="37vLTw" id="tIwzd1I3Xz" role="37wK5m">
                  <ref role="3cqZAo" node="5ntLU8GlzSJ" resolve="allTemplates" />
                </node>
                <node concept="37vLTw" id="tIwzd1I3X$" role="37wK5m">
                  <ref role="3cqZAo" node="5ntLU8GlzgG" resolve="node" />
                </node>
                <node concept="37vLTw" id="tIwzd1I5cM" role="37wK5m">
                  <ref role="3cqZAo" node="7Oc59RS$NXD" resolve="errors" />
                </node>
              </node>
              <node concept="37vLTw" id="tIwzd1Kh_W" role="1Lso8e">
                <ref role="3cqZAo" node="tIwzd1Kh_R" resolve="singleton" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1LlUBW" id="tIwzd1J9re" role="3clF45">
          <node concept="3vKaQO" id="tIwzd1JGgK" role="1Lm7xW">
            <node concept="3Tqbb2" id="tIwzd1JGgM" role="3O5elw" />
          </node>
          <node concept="3vKaQO" id="tIwzd1JGFm" role="1Lm7xW">
            <node concept="3Tqbb2" id="tIwzd1JGFo" role="3O5elw" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5ntLU8Glzld" role="1B3o_S" />
      <node concept="3uibUv" id="5ntLU8Glzg8" role="EKbjA">
        <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
        <node concept="1LlUBW" id="tIwzd1J6Yg" role="11_B2D">
          <node concept="3vKaQO" id="tIwzd1JEv8" role="1Lm7xW">
            <node concept="3Tqbb2" id="tIwzd1JEva" role="3O5elw" />
          </node>
          <node concept="3vKaQO" id="tIwzd1JFlW" role="1Lm7xW">
            <node concept="3Tqbb2" id="tIwzd1JFlY" role="3O5elw" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RSFIrK" role="jymVt" />
      <node concept="3clFb_" id="tIwzd1IJm5" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="bind" />
        <node concept="37vLTG" id="tIwzd1IJm6" role="3clF46">
          <property role="TrG5h" value="a" />
          <node concept="1LlUBW" id="tIwzd1Jb62" role="1tU5fm">
            <node concept="3vKaQO" id="tIwzd1JKvZ" role="1Lm7xW">
              <node concept="3Tqbb2" id="tIwzd1JKw1" role="3O5elw" />
            </node>
            <node concept="3vKaQO" id="tIwzd1JLON" role="1Lm7xW">
              <node concept="3Tqbb2" id="tIwzd1JLOP" role="3O5elw" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="tIwzd1IJm8" role="3clF46">
          <property role="TrG5h" value="b" />
          <node concept="1LlUBW" id="tIwzd1JclK" role="1tU5fm">
            <node concept="3vKaQO" id="tIwzd1JMxW" role="1Lm7xW">
              <node concept="3Tqbb2" id="tIwzd1JMxY" role="3O5elw" />
            </node>
            <node concept="3vKaQO" id="tIwzd1JNbN" role="1Lm7xW">
              <node concept="3Tqbb2" id="tIwzd1JNbP" role="3O5elw" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="tIwzd1IJmb" role="1B3o_S" />
        <node concept="3clFbS" id="tIwzd1IJmj" role="3clF47">
          <node concept="3clFbF" id="tIwzd1IJTe" role="3cqZAp">
            <node concept="2OqwBi" id="tIwzd1IK5h" role="3clFbG">
              <node concept="1LFfDK" id="tIwzd1Jhrj" role="2Oq$k0">
                <node concept="3cmrfG" id="tIwzd1JhU3" role="1LF_Uc">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="tIwzd1IJTd" role="1LFl5Q">
                  <ref role="3cqZAo" node="tIwzd1IJm6" resolve="a" />
                </node>
              </node>
              <node concept="X8dFx" id="tIwzd1ILvN" role="2OqNvi">
                <node concept="1LFfDK" id="tIwzd1Jj6M" role="25WWJ7">
                  <node concept="3cmrfG" id="tIwzd1JkgL" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="tIwzd1IL$K" role="1LFl5Q">
                    <ref role="3cqZAo" node="tIwzd1IJm8" resolve="b" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="tIwzd1JkGN" role="3cqZAp">
            <node concept="2OqwBi" id="tIwzd1JkGO" role="3clFbG">
              <node concept="1LFfDK" id="tIwzd1JkGP" role="2Oq$k0">
                <node concept="3cmrfG" id="tIwzd1JkGQ" role="1LF_Uc">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="tIwzd1JkGR" role="1LFl5Q">
                  <ref role="3cqZAo" node="tIwzd1IJm6" resolve="a" />
                </node>
              </node>
              <node concept="X8dFx" id="tIwzd1JkGS" role="2OqNvi">
                <node concept="1LFfDK" id="tIwzd1JkGT" role="25WWJ7">
                  <node concept="3cmrfG" id="tIwzd1JkGU" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="tIwzd1JkGV" role="1LFl5Q">
                    <ref role="3cqZAo" node="tIwzd1IJm8" resolve="b" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="tIwzd1Jmqu" role="3cqZAp">
            <node concept="37vLTw" id="tIwzd1Jmqs" role="3clFbG">
              <ref role="3cqZAo" node="tIwzd1IJm6" resolve="a" />
            </node>
          </node>
        </node>
        <node concept="1LlUBW" id="tIwzd1JagU" role="3clF45">
          <node concept="3vKaQO" id="tIwzd1JHBT" role="1Lm7xW">
            <node concept="3Tqbb2" id="tIwzd1JHBV" role="3O5elw" />
          </node>
          <node concept="3vKaQO" id="tIwzd1JJEf" role="1Lm7xW">
            <node concept="3Tqbb2" id="tIwzd1JJEh" role="3O5elw" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="tIwzd1IJBd" role="jymVt" />
      <node concept="3clFb_" id="tIwzd1IQ9L" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="initial" />
        <node concept="3Tm1VV" id="tIwzd1IQ9N" role="1B3o_S" />
        <node concept="3clFbS" id="tIwzd1IQ9R" role="3clF47">
          <node concept="3cpWs8" id="tIwzd1KjhT" role="3cqZAp">
            <node concept="3cpWsn" id="tIwzd1KjhU" role="3cpWs9">
              <property role="TrG5h" value="fst" />
              <node concept="3vKaQO" id="tIwzd1KjRd" role="1tU5fm">
                <node concept="3Tqbb2" id="tIwzd1KjRf" role="3O5elw" />
              </node>
              <node concept="2ShNRf" id="tIwzd1KjhV" role="33vP2m">
                <node concept="Tc6Ow" id="tIwzd1KjhW" role="2ShVmc">
                  <node concept="3Tqbb2" id="tIwzd1KjhX" role="HW$YZ" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="tIwzd1KjXw" role="3cqZAp">
            <node concept="3cpWsn" id="tIwzd1KjXx" role="3cpWs9">
              <property role="TrG5h" value="snd" />
              <node concept="3vKaQO" id="tIwzd1Kko$" role="1tU5fm">
                <node concept="3Tqbb2" id="tIwzd1KkoA" role="3O5elw" />
              </node>
              <node concept="2ShNRf" id="tIwzd1KjXy" role="33vP2m">
                <node concept="Tc6Ow" id="tIwzd1KjXz" role="2ShVmc">
                  <node concept="3Tqbb2" id="tIwzd1KjX$" role="HW$YZ" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="tIwzd1Jg_d" role="3cqZAp">
            <node concept="1Ls8ON" id="tIwzd1Jg_c" role="3clFbG">
              <node concept="37vLTw" id="tIwzd1KjhY" role="1Lso8e">
                <ref role="3cqZAo" node="tIwzd1KjhU" resolve="fst" />
              </node>
              <node concept="37vLTw" id="tIwzd1KjX_" role="1Lso8e">
                <ref role="3cqZAo" node="tIwzd1KjXx" resolve="snd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1LlUBW" id="tIwzd1JdRZ" role="3clF45">
          <node concept="3vKaQO" id="tIwzd1JNRR" role="1Lm7xW">
            <node concept="3Tqbb2" id="tIwzd1JNRT" role="3O5elw" />
          </node>
          <node concept="3vKaQO" id="tIwzd1JO5$" role="1Lm7xW">
            <node concept="3Tqbb2" id="tIwzd1JO5A" role="3O5elw" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="tIwzd1IQri" role="jymVt" />
      <node concept="312cEg" id="7Oc59RS$NXD" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="errors" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="7Oc59RS$N_2" role="1B3o_S" />
        <node concept="3vKaQO" id="7Oc59RS_6ag" role="1tU5fm">
          <node concept="3uibUv" id="7Oc59RSFlpG" role="3O5elw">
            <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8GlzbG" role="jymVt" />
    <node concept="312cEg" id="5ntLU8GlznG" role="jymVt">
      <property role="TrG5h" value="ruleTemplateCollection" />
      <node concept="3Tm6S6" id="5ntLU8GlznH" role="1B3o_S" />
      <node concept="3uibUv" id="5ntLU8Glzou" role="1tU5fm">
        <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
      </node>
    </node>
    <node concept="3Tm1VV" id="12yN8DyF_E2" role="1B3o_S" />
    <node concept="312cEg" id="7nkyKX7m8kI" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="3Tm6S6" id="7nkyKX7m8kJ" role="1B3o_S" />
      <node concept="3uibUv" id="7nkyKX7m8kL" role="1tU5fm">
        <ref role="3uigEE" to="nz6g:7eGEHDlc$ap" resolve="RuleBuilder" />
      </node>
    </node>
    <node concept="312cEg" id="78CwJJcPpPx" role="jymVt">
      <property role="TrG5h" value="programBuilder" />
      <node concept="3Tm6S6" id="78CwJJcPpPy" role="1B3o_S" />
      <node concept="3uibUv" id="7nPD14O1EYG" role="1tU5fm">
        <ref role="3uigEE" to="7n8k:5rhZO$TYZJM" resolve="ChrProgramBuilder" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7Oc59RSEjdb">
    <property role="TrG5h" value="Result" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7Oc59RSEmi9" role="jymVt" />
    <node concept="2YIFZL" id="7Oc59RSEjeq" role="jymVt">
      <property role="TrG5h" value="OK" />
      <node concept="3uibUv" id="7Oc59RSEjeG" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="7Oc59RSEjet" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSEjeu" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSEm38" role="3cqZAp">
          <node concept="37vLTw" id="7Oc59RSEme7" role="3clFbG">
            <ref role="3cqZAo" node="7Oc59RSEmdT" resolve="OK_RESULT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSErES" role="jymVt" />
    <node concept="2YIFZL" id="7Oc59RSErkd" role="jymVt">
      <property role="TrG5h" value="FAIL" />
      <node concept="37vLTG" id="7Oc59RSErSU" role="3clF46">
        <property role="TrG5h" value="errors" />
        <node concept="8X2XB" id="7Oc59RSEs1z" role="1tU5fm">
          <node concept="3uibUv" id="7Oc59RSErWI" role="8Xvag">
            <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RSErke" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="7Oc59RSErkf" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSErkg" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSEs7e" role="3cqZAp">
          <node concept="2ShNRf" id="7Oc59RSEs7c" role="3clFbG">
            <node concept="1pGfFk" id="7Oc59RSEsfC" role="2ShVmc">
              <ref role="37wK5l" node="7Oc59RSEm0l" resolve="Result.FAILURE" />
              <node concept="37vLTw" id="7Oc59RSEshA" role="37wK5m">
                <ref role="3cqZAo" node="7Oc59RSErSU" resolve="errors" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSH7g7" role="jymVt" />
    <node concept="2YIFZL" id="7Oc59RSH6VB" role="jymVt">
      <property role="TrG5h" value="FAIL" />
      <node concept="37vLTG" id="7Oc59RSH6VC" role="3clF46">
        <property role="TrG5h" value="error" />
        <node concept="17QB3L" id="2pvEdqukxHV" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7Oc59RSH6VF" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="7Oc59RSH6VG" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSH6VH" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSH6VI" role="3cqZAp">
          <node concept="2ShNRf" id="7Oc59RSH6VJ" role="3clFbG">
            <node concept="1pGfFk" id="7Oc59RSH6VK" role="2ShVmc">
              <ref role="37wK5l" node="7Oc59RSEm0l" resolve="Result.FAILURE" />
              <node concept="2ShNRf" id="7Oc59RSH8xe" role="37wK5m">
                <node concept="1pGfFk" id="7Oc59RSH8Ik" role="2ShVmc">
                  <ref role="37wK5l" node="7Oc59RSAqpA" resolve="ReportedError" />
                  <node concept="37vLTw" id="7Oc59RSH8K8" role="37wK5m">
                    <ref role="3cqZAo" node="7Oc59RSH6VC" resolve="error" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSFgx_" role="jymVt" />
    <node concept="2YIFZL" id="7Oc59RSFgim" role="jymVt">
      <property role="TrG5h" value="FAIL" />
      <node concept="37vLTG" id="7Oc59RSFgin" role="3clF46">
        <property role="TrG5h" value="errors" />
        <node concept="3uibUv" id="7Oc59RSFgJV" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3qUE_q" id="7Oc59RSFhgQ" role="11_B2D">
            <node concept="3uibUv" id="7Oc59RSFh_9" role="3qUE_r">
              <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7Oc59RSFgiq" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="7Oc59RSFgir" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSFgis" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSFgit" role="3cqZAp">
          <node concept="2ShNRf" id="7Oc59RSFgiu" role="3clFbG">
            <node concept="1pGfFk" id="7Oc59RSFgiv" role="2ShVmc">
              <ref role="37wK5l" node="7Oc59RSEm0l" resolve="Result.FAILURE" />
              <node concept="2YIFZM" id="7Oc59RSFiGr" role="37wK5m">
                <ref role="37wK5l" to="3o3z:~Iterables.toArray(java.lang.Iterable,java.lang.Class):java.lang.Object[]" resolve="toArray" />
                <ref role="1Pybhc" to="3o3z:~Iterables" resolve="Iterables" />
                <node concept="37vLTw" id="7Oc59RSFjp7" role="37wK5m">
                  <ref role="3cqZAo" node="7Oc59RSFgin" resolve="errors" />
                </node>
                <node concept="3VsKOn" id="7Oc59RSFjI9" role="37wK5m">
                  <ref role="3VsUkX" node="7Oc59RSEjjA" resolve="ReportedError" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSElSV" role="jymVt" />
    <node concept="Wx3nA" id="7Oc59RSEmdT" role="jymVt">
      <property role="TrG5h" value="OK_RESULT" />
      <node concept="3Tm6S6" id="7Oc59RSEmdS" role="1B3o_S" />
      <node concept="3uibUv" id="7Oc59RSEmdH" role="1tU5fm">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="2ShNRf" id="7Oc59RSJqdQ" role="33vP2m">
        <node concept="HV5vD" id="7Oc59RSJqoK" role="2ShVmc">
          <ref role="HV5vE" node="7Oc59RSJo_6" resolve="Result.OK" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSEp6D" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RS_hsj" role="jymVt">
      <property role="TrG5h" value="isSuccessful" />
      <property role="1EzhhJ" value="true" />
      <node concept="10P_77" id="7Oc59RS_hKI" role="3clF45" />
      <node concept="3Tm1VV" id="7Oc59RS_hsm" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RS_hsn" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7Oc59RSEn_B" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RSEnG3" role="jymVt">
      <property role="TrG5h" value="errors" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="7nkyKX7v6k0" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="7nkyKX7v6$H" role="11_B2D">
          <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7Oc59RSEnG6" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSEnG7" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7Oc59RSHlRX" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RSHvBv" role="jymVt">
      <property role="TrG5h" value="cause" />
      <node concept="3uibUv" id="7Oc59RSHwRo" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSHkY6" resolve="ReportedErrorException" />
      </node>
      <node concept="3Tm1VV" id="7Oc59RSHvBy" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSHvBz" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSHznF" role="3cqZAp">
          <node concept="10Nm6u" id="7Oc59RSHznE" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSEjfq" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7v7xb" role="jymVt">
      <property role="TrG5h" value="and" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7nkyKX7v8km" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="7nkyKX7v8$H" role="1tU5fm">
          <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
        </node>
      </node>
      <node concept="3uibUv" id="7nkyKX7v7OX" role="3clF45">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="7nkyKX7v7xe" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7v7xf" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7nkyKX7v1JM" role="jymVt" />
    <node concept="3clFb_" id="7Oc59RSJr0t" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="7Oc59RSJr0u" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxHU" role="3clF45" />
      <node concept="3clFbS" id="7Oc59RSJr0x" role="3clF47">
        <node concept="3clFbF" id="7Oc59RSJs9G" role="3cqZAp">
          <node concept="3cpWs3" id="7Oc59RSJw2n" role="3clFbG">
            <node concept="Xl_RD" id="7Oc59RSJwc3" role="3uHU7w">
              <property role="Xl_RC" value=" errors)" />
            </node>
            <node concept="3cpWs3" id="7Oc59RSJwwQ" role="3uHU7B">
              <node concept="2OqwBi" id="7Oc59RSJwWK" role="3uHU7w">
                <node concept="1rXfSq" id="7Oc59RSJwFn" role="2Oq$k0">
                  <ref role="37wK5l" node="7Oc59RSEnG3" resolve="errors" />
                </node>
                <node concept="liA8E" id="7nkyKX7vfHY" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.size():int" resolve="size" />
                </node>
              </node>
              <node concept="3cpWs3" id="7Oc59RSJuJa" role="3uHU7B">
                <node concept="2OqwBi" id="7Oc59RSJssQ" role="3uHU7B">
                  <node concept="1rXfSq" id="7Oc59RSJs9F" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                  </node>
                  <node concept="liA8E" id="7Oc59RSJuyR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getSimpleName():java.lang.String" resolve="getSimpleName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="7Oc59RSJvII" role="3uHU7w">
                  <property role="Xl_RC" value=" (" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Oc59RSJr0y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSJroI" role="jymVt" />
    <node concept="312cEu" id="7Oc59RSJo_6" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="OK" />
      <node concept="3clFb_" id="7Oc59RSJpwc" role="jymVt">
        <property role="TrG5h" value="isSuccessful" />
        <property role="1EzhhJ" value="false" />
        <node concept="10P_77" id="7Oc59RSJpwd" role="3clF45" />
        <node concept="3Tm1VV" id="7Oc59RSJpwe" role="1B3o_S" />
        <node concept="3clFbS" id="7Oc59RSJpwf" role="3clF47">
          <node concept="3clFbF" id="7Oc59RSJpwg" role="3cqZAp">
            <node concept="3clFbT" id="7Oc59RSJpwh" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7nkyKX7v8SU" role="jymVt" />
      <node concept="3clFb_" id="7nkyKX7v8YO" role="jymVt">
        <property role="TrG5h" value="and" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="7nkyKX7v8YP" role="3clF46">
          <property role="TrG5h" value="that" />
          <node concept="3uibUv" id="7nkyKX7v8YQ" role="1tU5fm">
            <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
          </node>
        </node>
        <node concept="3uibUv" id="7nkyKX7v8YR" role="3clF45">
          <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="3Tm1VV" id="7nkyKX7v8YS" role="1B3o_S" />
        <node concept="3clFbS" id="7nkyKX7v8YU" role="3clF47">
          <node concept="3clFbF" id="7nkyKX7v9mp" role="3cqZAp">
            <node concept="3K4zz7" id="7nkyKX7v9wF" role="3clFbG">
              <node concept="Xjq3P" id="7nkyKX7v9$Y" role="3K4E3e" />
              <node concept="37vLTw" id="7nkyKX7v9Ar" role="3K4GZi">
                <ref role="3cqZAo" node="7nkyKX7v8YP" resolve="that" />
              </node>
              <node concept="2OqwBi" id="7nkyKX7v9p3" role="3K4Cdx">
                <node concept="37vLTw" id="7nkyKX7v9mo" role="2Oq$k0">
                  <ref role="3cqZAo" node="7nkyKX7v8YP" resolve="that" />
                </node>
                <node concept="liA8E" id="7nkyKX7v9rB" role="2OqNvi">
                  <ref role="37wK5l" node="7Oc59RS_hsj" resolve="isSuccessful" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7nkyKX7v9dJ" role="jymVt" />
      <node concept="3clFb_" id="7Oc59RSJpwi" role="jymVt">
        <property role="TrG5h" value="errors" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="7nkyKX7v6MF" role="3clF45">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="7nkyKX7v6PJ" role="11_B2D">
            <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
          </node>
        </node>
        <node concept="3Tm1VV" id="7Oc59RSJpwl" role="1B3o_S" />
        <node concept="3clFbS" id="7Oc59RSJpwm" role="3clF47">
          <node concept="3clFbF" id="7nkyKX7v6HU" role="3cqZAp">
            <node concept="2YIFZM" id="7nkyKX7v6Kr" role="3clFbG">
              <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7Oc59RSJoVs" role="1B3o_S" />
      <node concept="3uibUv" id="7Oc59RSJpar" role="1zkMxy">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSJnVk" role="jymVt" />
    <node concept="312cEu" id="7Oc59RSEjfX" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="FAILURE" />
      <node concept="2tJIrI" id="7Oc59RSElUM" role="jymVt" />
      <node concept="3clFbW" id="7Oc59RSEm0l" role="jymVt">
        <node concept="37vLTG" id="7Oc59RSEpH8" role="3clF46">
          <property role="TrG5h" value="errors" />
          <node concept="8X2XB" id="7Oc59RSEpL0" role="1tU5fm">
            <node concept="3uibUv" id="7Oc59RSEpIh" role="8Xvag">
              <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="7Oc59RSEm0n" role="3clF45" />
        <node concept="3Tm1VV" id="7Oc59RSEm0o" role="1B3o_S" />
        <node concept="3clFbS" id="7Oc59RSEm0p" role="3clF47">
          <node concept="3clFbF" id="7Oc59RSEpOw" role="3cqZAp">
            <node concept="37vLTI" id="7Oc59RSEpOy" role="3clFbG">
              <node concept="2OqwBi" id="7Oc59RSEpOA" role="37vLTJ">
                <node concept="Xjq3P" id="7Oc59RSEpOD" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Oc59RSEpO_" role="2OqNvi">
                  <ref role="2Oxat5" node="7Oc59RSEpOr" resolve="errors" />
                </node>
              </node>
              <node concept="2YIFZM" id="7nkyKX7v2p8" role="37vLTx">
                <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <node concept="37vLTw" id="7nkyKX7v2u2" role="37wK5m">
                  <ref role="3cqZAo" node="7Oc59RSEpH8" resolve="errors" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7nkyKX7vaoB" role="jymVt" />
      <node concept="3clFbW" id="7nkyKX7va7j" role="jymVt">
        <node concept="37vLTG" id="7nkyKX7vbud" role="3clF46">
          <property role="TrG5h" value="results" />
          <node concept="8X2XB" id="7nkyKX7vc2Y" role="1tU5fm">
            <node concept="3uibUv" id="7nkyKX7vbNQ" role="8Xvag">
              <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="7nkyKX7va7n" role="3clF45" />
        <node concept="3Tm1VV" id="7nkyKX7va7o" role="1B3o_S" />
        <node concept="3clFbS" id="7nkyKX7va7p" role="3clF47">
          <node concept="3clFbF" id="7nkyKX7va7q" role="3cqZAp">
            <node concept="37vLTI" id="7nkyKX7va7r" role="3clFbG">
              <node concept="2OqwBi" id="7nkyKX7va7s" role="37vLTJ">
                <node concept="Xjq3P" id="7nkyKX7va7t" role="2Oq$k0" />
                <node concept="2OwXpG" id="7nkyKX7va7u" role="2OqNvi">
                  <ref role="2Oxat5" node="7Oc59RSEpOr" resolve="errors" />
                </node>
              </node>
              <node concept="2ShNRf" id="7nkyKX7vcwc" role="37vLTx">
                <node concept="1pGfFk" id="7nkyKX7vcQr" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="7nkyKX7vcZj" role="1pMfVU">
                    <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="7nkyKX7vdtv" role="3cqZAp">
            <node concept="3clFbS" id="7nkyKX7vdtx" role="2LFqv$">
              <node concept="3clFbF" id="7nkyKX7vdMr" role="3cqZAp">
                <node concept="2OqwBi" id="7nkyKX7vdXo" role="3clFbG">
                  <node concept="37vLTw" id="7nkyKX7vdMp" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Oc59RSEpOr" resolve="errors" />
                  </node>
                  <node concept="liA8E" id="7nkyKX7veew" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                    <node concept="2OqwBi" id="7nkyKX7veoK" role="37wK5m">
                      <node concept="37vLTw" id="7nkyKX7velW" role="2Oq$k0">
                        <ref role="3cqZAo" node="7nkyKX7vdty" resolve="r" />
                      </node>
                      <node concept="liA8E" id="7nkyKX7vetH" role="2OqNvi">
                        <ref role="37wK5l" node="7Oc59RSEnG3" resolve="errors" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="7nkyKX7vdty" role="1Duv9x">
              <property role="TrG5h" value="r" />
              <node concept="3uibUv" id="7nkyKX7vd$8" role="1tU5fm">
                <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
              </node>
            </node>
            <node concept="37vLTw" id="7nkyKX7vdHQ" role="1DdaDG">
              <ref role="3cqZAo" node="7nkyKX7vbud" resolve="results" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RSElZe" role="jymVt" />
      <node concept="3clFb_" id="7Oc59RSElUY" role="jymVt">
        <property role="TrG5h" value="isSuccessful" />
        <property role="1EzhhJ" value="false" />
        <node concept="10P_77" id="7Oc59RSElUZ" role="3clF45" />
        <node concept="3Tm1VV" id="7Oc59RSElV0" role="1B3o_S" />
        <node concept="3clFbS" id="7Oc59RSElV2" role="3clF47">
          <node concept="3clFbF" id="7Oc59RSElV4" role="3cqZAp">
            <node concept="3clFbT" id="7Oc59RSElV3" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RSElXP" role="jymVt" />
      <node concept="3clFb_" id="7nkyKX7v9C7" role="jymVt">
        <property role="TrG5h" value="and" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="7nkyKX7v9C8" role="3clF46">
          <property role="TrG5h" value="that" />
          <node concept="3uibUv" id="7nkyKX7v9C9" role="1tU5fm">
            <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
          </node>
        </node>
        <node concept="3uibUv" id="7nkyKX7v9Ca" role="3clF45">
          <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
        </node>
        <node concept="3Tm1VV" id="7nkyKX7v9Cb" role="1B3o_S" />
        <node concept="3clFbS" id="7nkyKX7v9Cd" role="3clF47">
          <node concept="3clFbF" id="7nkyKX7veXK" role="3cqZAp">
            <node concept="3K4zz7" id="7nkyKX7vf8w" role="3clFbG">
              <node concept="Xjq3P" id="7nkyKX7vfdb" role="3K4E3e" />
              <node concept="2OqwBi" id="7nkyKX7vf0Q" role="3K4Cdx">
                <node concept="37vLTw" id="7nkyKX7veXI" role="2Oq$k0">
                  <ref role="3cqZAo" node="7nkyKX7v9C8" resolve="that" />
                </node>
                <node concept="liA8E" id="7nkyKX7vf3u" role="2OqNvi">
                  <ref role="37wK5l" node="7Oc59RS_hsj" resolve="isSuccessful" />
                </node>
              </node>
              <node concept="2ShNRf" id="7nkyKX7veAz" role="3K4GZi">
                <node concept="1pGfFk" id="7nkyKX7veUe" role="2ShVmc">
                  <ref role="37wK5l" node="7nkyKX7va7j" resolve="Result.FAILURE" />
                  <node concept="Xjq3P" id="7nkyKX7vfkh" role="37wK5m" />
                  <node concept="37vLTw" id="7nkyKX7vfmx" role="37wK5m">
                    <ref role="3cqZAo" node="7nkyKX7v9C8" resolve="that" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7nkyKX7v9SU" role="jymVt" />
      <node concept="3clFb_" id="7Oc59RSEqG2" role="jymVt">
        <property role="TrG5h" value="errors" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="7nkyKX7v46u" role="3clF45">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3uibUv" id="7nkyKX7v4oi" role="11_B2D">
            <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
          </node>
        </node>
        <node concept="3Tm1VV" id="7Oc59RSEqG5" role="1B3o_S" />
        <node concept="3clFbS" id="7Oc59RSEqG7" role="3clF47">
          <node concept="3clFbF" id="7nkyKX7v4QN" role="3cqZAp">
            <node concept="2YIFZM" id="7nkyKX7v4VU" role="3clFbG">
              <ref role="37wK5l" to="33ny:~Collections.unmodifiableCollection(java.util.Collection):java.util.Collection" resolve="unmodifiableCollection" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="37vLTw" id="7nkyKX7v5n9" role="37wK5m">
                <ref role="3cqZAo" node="7Oc59RSEpOr" resolve="errors" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RSElXY" role="jymVt" />
      <node concept="3clFb_" id="7Oc59RSHzVX" role="jymVt">
        <property role="TrG5h" value="cause" />
        <property role="1EzhhJ" value="false" />
        <node concept="3uibUv" id="7Oc59RSHzVY" role="3clF45">
          <ref role="3uigEE" node="7Oc59RSHkY6" resolve="ReportedErrorException" />
        </node>
        <node concept="3Tm1VV" id="7Oc59RSHzVZ" role="1B3o_S" />
        <node concept="3clFbS" id="7Oc59RSHzW3" role="3clF47">
          <node concept="3clFbF" id="7Oc59RSHzW6" role="3cqZAp">
            <node concept="3nyPlj" id="7Oc59RSHzW5" role="3clFbG">
              <ref role="37wK5l" node="7Oc59RSHvBv" resolve="cause" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7Oc59RSHzW4" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7Oc59RSHtBU" role="jymVt" />
      <node concept="3Tm6S6" id="7Oc59RSJogG" role="1B3o_S" />
      <node concept="3uibUv" id="7Oc59RSEjha" role="1zkMxy">
        <ref role="3uigEE" node="7Oc59RSEjdb" resolve="Result" />
      </node>
      <node concept="312cEg" id="7Oc59RSEpOr" role="jymVt">
        <property role="TrG5h" value="errors" />
        <node concept="3Tm6S6" id="7Oc59RSEpOs" role="1B3o_S" />
        <node concept="3uibUv" id="7nkyKX7v21Y" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7nkyKX7v29x" role="11_B2D">
            <ref role="3uigEE" node="7Oc59RSEjjA" resolve="ReportedError" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSEji1" role="jymVt" />
    <node concept="2tJIrI" id="7Oc59RSEjid" role="jymVt" />
    <node concept="3Tm1VV" id="7Oc59RSEjdc" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6fdr4UgftiG">
    <property role="TrG5h" value="RuleTemplateCollection" />
    <node concept="2tJIrI" id="6fdr4UgftDX" role="jymVt" />
    <node concept="3clFbW" id="429xoypKDd_" role="jymVt">
      <node concept="37vLTG" id="429xoypKDSO" role="3clF46">
        <property role="TrG5h" value="ruleTemplateManifest" />
        <node concept="3uibUv" id="429xoypKDSP" role="1tU5fm">
          <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
        </node>
      </node>
      <node concept="3cqZAl" id="429xoypKDdB" role="3clF45" />
      <node concept="3Tm1VV" id="429xoypKDdC" role="1B3o_S" />
      <node concept="3clFbS" id="429xoypKDdD" role="3clF47">
        <node concept="3clFbF" id="429xoypKGGD" role="3cqZAp">
          <node concept="37vLTI" id="429xoypKGGF" role="3clFbG">
            <node concept="2OqwBi" id="429xoypKGGJ" role="37vLTJ">
              <node concept="Xjq3P" id="429xoypKGGM" role="2Oq$k0" />
              <node concept="2OwXpG" id="429xoypKGGI" role="2OqNvi">
                <ref role="2Oxat5" node="429xoypKGG_" resolve="ruleTemplateManifest" />
              </node>
            </node>
            <node concept="37vLTw" id="429xoypKGGN" role="37vLTx">
              <ref role="3cqZAo" node="429xoypKDSO" resolve="ruleTemplateManifest" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="429xoypKIWF" role="3cqZAp">
          <node concept="1rXfSq" id="429xoypKIWD" role="3clFbG">
            <ref role="37wK5l" node="12yN8Dyvyy6" resolve="collectTemplates" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="429xoypKCs8" role="jymVt" />
    <node concept="2tJIrI" id="429xoypKCy4" role="jymVt" />
    <node concept="3clFb_" id="12yN8Dyvyy6" role="jymVt">
      <property role="TrG5h" value="collectTemplates" />
      <node concept="3cqZAl" id="12yN8Dyvyy8" role="3clF45" />
      <node concept="3Tm6S6" id="429xoypKETd" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8Dyvyya" role="3clF47">
        <node concept="3SKdUt" id="12yN8DyFw_S" role="3cqZAp">
          <node concept="3SKdUq" id="12yN8DyFwRk" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3clFbF" id="12yN8DyFlwl" role="3cqZAp">
          <node concept="2OqwBi" id="12yN8DyFlDG" role="3clFbG">
            <node concept="37vLTw" id="12yN8DyFlwj" role="2Oq$k0">
              <ref role="3cqZAo" node="429xoypKGG_" resolve="ruleTemplateManifest" />
            </node>
            <node concept="liA8E" id="12yN8DyFmfD" role="2OqNvi">
              <ref role="37wK5l" to="i348:4OKkcnfu_xg" resolve="collectTemplates" />
              <node concept="2ShNRf" id="12yN8DyFmgA" role="37wK5m">
                <node concept="HV5vD" id="12yN8DyFtMn" role="2ShVmc">
                  <ref role="HV5vE" node="6fdr4Ugfypo" resolve="RuleTemplateCollection.Collector" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6fdr4UgftJ4" role="jymVt" />
    <node concept="3clFb_" id="6fdr4UgfuGk" role="jymVt">
      <property role="TrG5h" value="allTemplates" />
      <node concept="37vLTG" id="12yN8DyvzeF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="12yN8Dyv_JV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="12yN8DyF0Te" role="3clF46">
        <property role="TrG5h" value="visited" />
        <node concept="2hMVRd" id="12yN8DyF250" role="1tU5fm">
          <node concept="3uibUv" id="12yN8DyF2bi" role="2hN53Y">
            <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="6fdr4UgfxqC" role="3clF45">
        <node concept="1LlUBW" id="7t5VLKHa5QV" role="A3Ik2">
          <node concept="3uibUv" id="1ffsG7c4ezn" role="1Lm7xW">
            <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          </node>
          <node concept="3uibUv" id="7t5VLKHa8iL" role="1Lm7xW">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6fdr4UgfuGn" role="1B3o_S" />
      <node concept="3clFbS" id="6fdr4UgfuGo" role="3clF47">
        <node concept="3cpWs8" id="12yN8DyvAUh" role="3cqZAp">
          <node concept="3cpWsn" id="12yN8DyvAUk" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="12yN8DyvAUd" role="1tU5fm">
              <node concept="1LlUBW" id="7t5VLKHacJO" role="_ZDj9">
                <node concept="3uibUv" id="1ffsG7c4ntm" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                </node>
                <node concept="3uibUv" id="7t5VLKHafvy" role="1Lm7xW">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="12yN8DyvD8g" role="33vP2m">
              <node concept="Tc6Ow" id="12yN8DyvD72" role="2ShVmc">
                <node concept="1LlUBW" id="7t5VLKHa9fr" role="HW$YZ">
                  <node concept="3uibUv" id="1ffsG7c4r9t" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  </node>
                  <node concept="3uibUv" id="7t5VLKHabQB" role="1Lm7xW">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12yN8DyvIhk" role="3cqZAp" />
        <node concept="3cpWs8" id="YGS68MZTt3" role="3cqZAp">
          <node concept="3cpWsn" id="YGS68MZTt4" role="3cpWs9">
            <property role="TrG5h" value="allConcepts" />
            <node concept="_YKpA" id="YGS68MZTsU" role="1tU5fm">
              <node concept="3bZ5Sz" id="YGS68MZTsX" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="YGS68MZTt5" role="33vP2m">
              <node concept="2OqwBi" id="YGS68MZTt6" role="2Oq$k0">
                <node concept="37vLTw" id="YGS68MZTt7" role="2Oq$k0">
                  <ref role="3cqZAo" node="12yN8DyvzeF" resolve="node" />
                </node>
                <node concept="2yIwOk" id="YGS68MZTt8" role="2OqNvi" />
              </node>
              <node concept="3oJPKh" id="YGS68MZTt9" role="2OqNvi">
                <node concept="1xIGOp" id="YGS68MZTta" role="1xVPHs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="YGS68MZRMA" role="3cqZAp" />
        <node concept="3SKdUt" id="12yN8Dywh_Q" role="3cqZAp">
          <node concept="3SKdUq" id="12yN8DywhDX" role="3SKWNk">
            <property role="3SKdUp" value="assuming the list is sorted from most specific to most abstract" />
          </node>
        </node>
        <node concept="3SKdUt" id="tIwzd1HIKH" role="3cqZAp">
          <node concept="3SKdUq" id="tIwzd1HKju" role="3SKWNk">
            <property role="3SKdUp" value="TODO: check the above assumption" />
          </node>
        </node>
        <node concept="1Dw8fO" id="12yN8Dywu8N" role="3cqZAp">
          <node concept="3cpWsn" id="12yN8Dywu8Q" role="1Duv9x">
            <property role="TrG5h" value="cptIdx" />
            <node concept="10Oyi0" id="12yN8Dywu8U" role="1tU5fm" />
            <node concept="3cmrfG" id="12yN8Dywu8V" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="12yN8Dywu8W" role="1Dwp0S">
            <node concept="37vLTw" id="12yN8Dywu8Z" role="3uHU7B">
              <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
            </node>
            <node concept="2OqwBi" id="12yN8Dywug9" role="3uHU7w">
              <node concept="34oBXx" id="12yN8Dywuge" role="2OqNvi" />
              <node concept="37vLTw" id="12yN8Dywugg" role="2Oq$k0">
                <ref role="3cqZAo" node="YGS68MZTt4" resolve="allConcepts" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="12yN8Dywugh" role="1Dwrff">
            <node concept="37vLTw" id="12yN8Dywugj" role="2$L3a6">
              <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
            </node>
          </node>
          <node concept="3clFbS" id="12yN8Dywi36" role="2LFqv$">
            <node concept="3cpWs8" id="12yN8Dywugk" role="3cqZAp">
              <node concept="3cpWsn" id="12yN8Dywugn" role="3cpWs9">
                <property role="TrG5h" value="cpt" />
                <node concept="3bZ5Sz" id="YGS68MZVBF" role="1tU5fm" />
                <node concept="1y4W85" id="12yN8Dywul8" role="33vP2m">
                  <node concept="37vLTw" id="12yN8Dywulb" role="1y566C">
                    <ref role="3cqZAo" node="YGS68MZTt4" resolve="allConcepts" />
                  </node>
                  <node concept="37vLTw" id="12yN8Dywugp" role="1y58nS">
                    <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="12yN8DywsEn" role="3cqZAp" />
            <node concept="3clFbJ" id="12yN8Dyw79t" role="3cqZAp">
              <node concept="3clFbS" id="12yN8Dyw79w" role="3clFbx">
                <node concept="3cpWs8" id="12yN8DywoJ8" role="3cqZAp">
                  <node concept="3cpWsn" id="12yN8DywoJ9" role="3cpWs9">
                    <property role="TrG5h" value="matching" />
                    <node concept="3vKaQO" id="12yN8DyD$_b" role="1tU5fm">
                      <node concept="3uibUv" id="1ffsG7c4xd9" role="3O5elw">
                        <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                      </node>
                    </node>
                    <node concept="3EllGN" id="12yN8DywoJa" role="33vP2m">
                      <node concept="37vLTw" id="12yN8Dywulc" role="3ElVtu">
                        <ref role="3cqZAo" node="12yN8Dywugn" resolve="cpt" />
                      </node>
                      <node concept="37vLTw" id="12yN8DywoJc" role="3ElQJh">
                        <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="12yN8Dywsy6" role="3cqZAp" />
                <node concept="1DcWWT" id="12yN8DyDOdI" role="3cqZAp">
                  <node concept="3clFbS" id="12yN8DyDOdJ" role="2LFqv$">
                    <node concept="3clFbJ" id="12yN8DyDPmt" role="3cqZAp">
                      <node concept="3clFbS" id="12yN8DyDPmw" role="3clFbx">
                        <node concept="3N13vt" id="12yN8DyDQvt" role="3cqZAp" />
                      </node>
                      <node concept="1Wc70l" id="12yN8DyDQ3G" role="3clFbw">
                        <node concept="2OqwBi" id="12yN8DyDQ9Y" role="3uHU7w">
                          <node concept="37vLTw" id="12yN8DyDQ7A" role="2Oq$k0">
                            <ref role="3cqZAo" node="12yN8DyDOdM" resolve="tpl" />
                          </node>
                          <node concept="liA8E" id="12yN8DyDQnA" role="2OqNvi">
                            <ref role="37wK5l" to="i348:1ffsG7bWyMV" resolve="isExactMatch" />
                          </node>
                        </node>
                        <node concept="3y3z36" id="12yN8DyDPMo" role="3uHU7B">
                          <node concept="37vLTw" id="12yN8DyDPny" role="3uHU7B">
                            <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
                          </node>
                          <node concept="3cmrfG" id="12yN8DyDPNL" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="12yN8DyDQw1" role="3cqZAp" />
                    <node concept="3cpWs8" id="7t5VLKHasy_" role="3cqZAp">
                      <node concept="3cpWsn" id="7t5VLKHasyA" role="3cpWs9">
                        <property role="TrG5h" value="context" />
                        <node concept="3uibUv" id="7t5VLKHasyz" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="1rXfSq" id="7t5VLKHasyB" role="33vP2m">
                          <ref role="37wK5l" node="7t5VLKHagn3" resolve="getContext" />
                          <node concept="37vLTw" id="7t5VLKHasyC" role="37wK5m">
                            <ref role="3cqZAo" node="12yN8DyDOdM" resolve="tpl" />
                          </node>
                          <node concept="37vLTw" id="7t5VLKHasyD" role="37wK5m">
                            <ref role="3cqZAo" node="12yN8DyvzeF" resolve="node" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="7t5VLKHashr" role="3cqZAp" />
                    <node concept="3clFbJ" id="12yN8DyDQBv" role="3cqZAp">
                      <node concept="3clFbS" id="12yN8DyDQBy" role="3clFbx">
                        <node concept="3clFbF" id="12yN8DywprF" role="3cqZAp">
                          <node concept="2OqwBi" id="12yN8DywpEM" role="3clFbG">
                            <node concept="37vLTw" id="12yN8DywprE" role="2Oq$k0">
                              <ref role="3cqZAo" node="12yN8DyvAUk" resolve="result" />
                            </node>
                            <node concept="TSZUe" id="12yN8DywrHc" role="2OqNvi">
                              <node concept="1Ls8ON" id="7t5VLKHat4$" role="25WWJ7">
                                <node concept="37vLTw" id="12yN8DyDRLu" role="1Lso8e">
                                  <ref role="3cqZAo" node="12yN8DyDOdM" resolve="tpl" />
                                </node>
                                <node concept="37vLTw" id="7t5VLKHatjZ" role="1Lso8e">
                                  <ref role="3cqZAo" node="7t5VLKHasyA" resolve="context" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="12yN8DyDZBR" role="3clFbw">
                        <ref role="37wK5l" node="12yN8DywHOS" resolve="testApplicable" />
                        <node concept="37vLTw" id="12yN8DyDZLk" role="37wK5m">
                          <ref role="3cqZAo" node="12yN8DyDOdM" resolve="tpl" />
                        </node>
                        <node concept="37vLTw" id="12yN8DyDZDK" role="37wK5m">
                          <ref role="3cqZAo" node="12yN8DyvzeF" resolve="node" />
                        </node>
                        <node concept="37vLTw" id="7t5VLKHasQo" role="37wK5m">
                          <ref role="3cqZAo" node="7t5VLKHasyA" resolve="context" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="12yN8DyDOdM" role="1Duv9x">
                    <property role="TrG5h" value="tpl" />
                    <node concept="3uibUv" id="1ffsG7c4uLt" role="1tU5fm">
                      <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="12yN8DyDOdR" role="1DdaDG">
                    <ref role="3cqZAo" node="12yN8DywoJ9" resolve="matching" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="12yN8DywaUF" role="3clFbw">
                <node concept="37vLTw" id="12yN8Dyw7ap" role="2Oq$k0">
                  <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                </node>
                <node concept="2Nt0df" id="12yN8Dywmhb" role="2OqNvi">
                  <node concept="37vLTw" id="12yN8Dywuld" role="38cxEo">
                    <ref role="3cqZAo" node="12yN8Dywugn" resolve="cpt" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1KAYA" role="3cqZAp" />
        <node concept="3cpWs6" id="12yN8DyDYJd" role="3cqZAp">
          <node concept="37vLTw" id="12yN8DyDYJe" role="3cqZAk">
            <ref role="3cqZAo" node="12yN8DyvAUk" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="12yN8Dyv_NV" role="lGtFl">
        <node concept="TZ5HA" id="12yN8Dyv_NW" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8Dyv_NX" role="1dT_Ay">
            <property role="1dT_AB" value="Searches and returns all rule templates applicable to the specified node. Extracts the node's concept to search for matching templates." />
          </node>
        </node>
        <node concept="TZ5HA" id="12yN8DyvA3F" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8DyvA3G" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
          <node concept="2U$1Ah" id="12yN8DyE1vx" role="1dT_Ay">
            <property role="2U$1Ai" value="p" />
            <node concept="TZ5HA" id="12yN8DyE1vy" role="2U$1Aj" />
          </node>
          <node concept="1dT_AC" id="12yN8DyE1vw" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="12yN8DyvA3p" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8DyvA3q" role="1dT_Ay">
            <property role="1dT_AB" value="First, searches own template collection for the exact and inexact match(-es)." />
          </node>
        </node>
        <node concept="TZ5HA" id="12yN8DyvA54" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8DyvA55" role="1dT_Ay">
            <property role="1dT_AB" value="Calls &quot;isApplicable&quot; on each found template, skips not applicable. " />
          </node>
        </node>
        <node concept="TZ5HA" id="12yN8DyvA7q" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8DyvA7r" role="1dT_Ay">
            <property role="1dT_AB" value="Recursively calls allTemplates on the delegates. " />
          </node>
        </node>
        <node concept="TUZQ0" id="12yN8Dyv_NY" role="3nqlJM">
          <property role="TUZQ4" value="node to search templates for" />
          <node concept="zr_55" id="12yN8Dyv_O0" role="zr_5Q">
            <ref role="zr_51" node="12yN8DyvzeF" resolve="node" />
          </node>
        </node>
        <node concept="x79VA" id="12yN8Dyv_O1" role="3nqlJM">
          <property role="x79VB" value="all templates applicable to node" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5NuEpF1qqA9" role="jymVt" />
    <node concept="3clFb_" id="5NuEpF1qn9x" role="jymVt">
      <property role="TrG5h" value="allTemplatesWithNoInput" />
      <node concept="37vLTG" id="3x8pcoFuE1e" role="3clF46">
        <property role="TrG5h" value="postProcess" />
        <node concept="10P_77" id="3x8pcoFuELY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5NuEpF1qn9$" role="3clF46">
        <property role="TrG5h" value="visited" />
        <node concept="2hMVRd" id="5NuEpF1qn9_" role="1tU5fm">
          <node concept="3uibUv" id="5NuEpF1qn9A" role="2hN53Y">
            <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5NuEpF1qn9B" role="3clF45">
        <node concept="1LlUBW" id="23ITgZhhKsi" role="A3Ik2">
          <node concept="3uibUv" id="1ffsG7c4bl4" role="1Lm7xW">
            <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          </node>
          <node concept="3uibUv" id="23ITgZhhKsj" role="1Lm7xW">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5NuEpF1qn9D" role="1B3o_S" />
      <node concept="3clFbS" id="5NuEpF1qn9E" role="3clF47">
        <node concept="3cpWs8" id="5NuEpF1qn9F" role="3cqZAp">
          <node concept="3cpWsn" id="5NuEpF1qn9G" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="5NuEpF1qn9H" role="1tU5fm">
              <node concept="1LlUBW" id="7t5VLKHb0SG" role="_ZDj9">
                <node concept="3uibUv" id="1ffsG7c4_ll" role="1Lm7xW">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                </node>
                <node concept="3uibUv" id="7t5VLKHb0SI" role="1Lm7xW">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="5NuEpF1qn9J" role="33vP2m">
              <node concept="Tc6Ow" id="5NuEpF1qn9K" role="2ShVmc">
                <node concept="1LlUBW" id="7t5VLKHb1Xg" role="HW$YZ">
                  <node concept="3uibUv" id="1ffsG7c4CSJ" role="1Lm7xW">
                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  </node>
                  <node concept="3uibUv" id="7t5VLKHb1Xi" role="1Lm7xW">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1qn9M" role="3cqZAp" />
        <node concept="3clFbJ" id="5NuEpF1qnaj" role="3cqZAp">
          <node concept="3clFbS" id="5NuEpF1qnak" role="3clFbx">
            <node concept="3cpWs8" id="5NuEpF1qnal" role="3cqZAp">
              <node concept="3cpWsn" id="5NuEpF1qnam" role="3cpWs9">
                <property role="TrG5h" value="matching" />
                <node concept="3vKaQO" id="5NuEpF1qnan" role="1tU5fm">
                  <node concept="3uibUv" id="1ffsG7c4Fce" role="3O5elw">
                    <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                  </node>
                </node>
                <node concept="3EllGN" id="5NuEpF1qnap" role="33vP2m">
                  <node concept="10Nm6u" id="5NuEpF1qPk$" role="3ElVtu" />
                  <node concept="37vLTw" id="5NuEpF1qnar" role="3ElQJh">
                    <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5NuEpF1qnas" role="3cqZAp" />
            <node concept="1DcWWT" id="5NuEpF1qnat" role="3cqZAp">
              <node concept="3clFbS" id="5NuEpF1qnau" role="2LFqv$">
                <node concept="3cpWs8" id="3QpvQgGtJe5" role="3cqZAp">
                  <node concept="3cpWsn" id="3QpvQgGtJe6" role="3cpWs9">
                    <property role="TrG5h" value="context" />
                    <node concept="3uibUv" id="3QpvQgGtJe7" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="1rXfSq" id="3QpvQgGtJe8" role="33vP2m">
                      <ref role="37wK5l" node="7t5VLKHagn3" resolve="getContext" />
                      <node concept="37vLTw" id="3QpvQgGtJe9" role="37wK5m">
                        <ref role="3cqZAo" node="5NuEpF1qnaO" resolve="tpl" />
                      </node>
                      <node concept="10Nm6u" id="3QpvQgGtJst" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3QpvQgGtJV7" role="3cqZAp" />
                <node concept="3clFbJ" id="5NuEpF1qnaE" role="3cqZAp">
                  <node concept="3clFbS" id="5NuEpF1qnaF" role="3clFbx">
                    <node concept="3clFbF" id="5NuEpF1qnaG" role="3cqZAp">
                      <node concept="2OqwBi" id="5NuEpF1qnaH" role="3clFbG">
                        <node concept="37vLTw" id="5NuEpF1qnaI" role="2Oq$k0">
                          <ref role="3cqZAo" node="5NuEpF1qn9G" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="5NuEpF1qnaJ" role="2OqNvi">
                          <node concept="1Ls8ON" id="7t5VLKHb0kd" role="25WWJ7">
                            <node concept="37vLTw" id="5NuEpF1qnaK" role="1Lso8e">
                              <ref role="3cqZAo" node="5NuEpF1qnaO" resolve="tpl" />
                            </node>
                            <node concept="37vLTw" id="3QpvQgGtKGg" role="1Lso8e">
                              <ref role="3cqZAo" node="3QpvQgGtJe6" resolve="context" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="5NuEpF1qnaL" role="3clFbw">
                    <ref role="37wK5l" node="3x8pcoFuEOz" resolve="testApplicableNoInput" />
                    <node concept="37vLTw" id="5NuEpF1qnaM" role="37wK5m">
                      <ref role="3cqZAo" node="5NuEpF1qnaO" resolve="tpl" />
                    </node>
                    <node concept="37vLTw" id="3x8pcoFuJcx" role="37wK5m">
                      <ref role="3cqZAo" node="3x8pcoFuE1e" resolve="postProcess" />
                    </node>
                    <node concept="37vLTw" id="3QpvQgGtK1w" role="37wK5m">
                      <ref role="3cqZAo" node="3QpvQgGtJe6" resolve="context" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5NuEpF1qnaO" role="1Duv9x">
                <property role="TrG5h" value="tpl" />
                <node concept="3uibUv" id="1ffsG7c4G83" role="1tU5fm">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                </node>
              </node>
              <node concept="37vLTw" id="5NuEpF1qnaQ" role="1DdaDG">
                <ref role="3cqZAo" node="5NuEpF1qnam" resolve="matching" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5NuEpF1qnaR" role="3clFbw">
            <node concept="37vLTw" id="5NuEpF1qnaS" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
            </node>
            <node concept="2Nt0df" id="5NuEpF1qnaT" role="2OqNvi">
              <node concept="10Nm6u" id="5NuEpF1qPa2" role="38cxEo" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1qnbm" role="3cqZAp" />
        <node concept="3cpWs6" id="5NuEpF1qnbn" role="3cqZAp">
          <node concept="37vLTw" id="5NuEpF1qnbo" role="3cqZAk">
            <ref role="3cqZAo" node="5NuEpF1qn9G" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5NuEpF1qnbp" role="lGtFl">
        <node concept="TZ5HA" id="5NuEpF1qnbq" role="TZ5H$">
          <node concept="1dT_AC" id="5NuEpF1qnbr" role="1dT_Ay">
            <property role="1dT_AB" value="Searches and returns all rule templates applicable without the node." />
          </node>
        </node>
        <node concept="TZ5HA" id="5NuEpF1qnbs" role="TZ5H$">
          <node concept="1dT_AC" id="5NuEpF1qnbt" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
          <node concept="2U$1Ah" id="5NuEpF1qnbu" role="1dT_Ay">
            <property role="2U$1Ai" value="p" />
            <node concept="TZ5HA" id="5NuEpF1qnbv" role="2U$1Aj" />
          </node>
          <node concept="1dT_AC" id="5NuEpF1qnbw" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="5NuEpF1qnbx" role="TZ5H$" />
        <node concept="TZ5HA" id="5NuEpF1qnbz" role="TZ5H$">
          <node concept="1dT_AC" id="5NuEpF1qnb$" role="1dT_Ay">
            <property role="1dT_AB" value="Calls &quot;isApplicable&quot; on each found template, skips not applicable. " />
          </node>
        </node>
        <node concept="TZ5HA" id="5NuEpF1qnb_" role="TZ5H$">
          <node concept="1dT_AC" id="5NuEpF1qnbA" role="1dT_Ay">
            <property role="1dT_AB" value="Recursively calls allTemplatesWithNoInput on the delegates. " />
          </node>
        </node>
        <node concept="x79VA" id="5NuEpF1qnbD" role="3nqlJM">
          <property role="x79VB" value="all templates applicable to node" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6fdr4UgfyxB" role="jymVt" />
    <node concept="3clFb_" id="12yN8DyLgB9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="12yN8DyLgBa" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxI0" role="3clF45" />
      <node concept="3clFbS" id="12yN8DyLgBd" role="3clF47">
        <node concept="3clFbF" id="12yN8DyLiTf" role="3cqZAp">
          <node concept="3cpWs3" id="12yN8DyLkca" role="3clFbG">
            <node concept="3cpWs3" id="12yN8DyLkCn" role="3uHU7B">
              <node concept="3cpWs3" id="12yN8DyLiXM" role="3uHU7B">
                <node concept="2OqwBi" id="7Oc59RSEbhU" role="3uHU7B">
                  <node concept="1rXfSq" id="7Oc59RSEaXF" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                  </node>
                  <node concept="liA8E" id="7Oc59RSEbW0" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getSimpleName():java.lang.String" resolve="getSimpleName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="12yN8DyLiXU" role="3uHU7w">
                  <property role="Xl_RC" value="(" />
                </node>
              </node>
              <node concept="2OqwBi" id="12yN8DyMeDH" role="3uHU7w">
                <node concept="37vLTw" id="12yN8DyMeg9" role="2Oq$k0">
                  <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                </node>
                <node concept="34oBXx" id="12yN8DyMfS1" role="2OqNvi" />
              </node>
            </node>
            <node concept="Xl_RD" id="12yN8DyMfYr" role="3uHU7w">
              <property role="Xl_RC" value=" templates)" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="12yN8DyLgBe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DywF8F" role="jymVt" />
    <node concept="3clFb_" id="7t5VLKHagn3" role="jymVt">
      <property role="TrG5h" value="getContext" />
      <node concept="37vLTG" id="7t5VLKHagn4" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="1ffsG7c4zvP" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          <node concept="16syzq" id="2JQZWxFbkiS" role="11_B2D">
            <ref role="16sUi3" node="2JQZWxFbjv6" resolve="Context" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7t5VLKHagn6" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7t5VLKHagn7" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7t5VLKHajO1" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm6S6" id="7t5VLKHagn9" role="1B3o_S" />
      <node concept="3clFbS" id="7t5VLKHagna" role="3clF47">
        <node concept="3SKdUt" id="7t5VLKHagnb" role="3cqZAp">
          <node concept="3SKdUq" id="7t5VLKHagnc" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3cpWs8" id="2JQZWxFbhyR" role="3cqZAp">
          <node concept="3cpWsn" id="2JQZWxFbhyS" role="3cpWs9">
            <property role="TrG5h" value="context" />
            <node concept="16syzq" id="2JQZWxFbkof" role="1tU5fm">
              <ref role="16sUi3" node="2JQZWxFbjv6" resolve="Context" />
            </node>
            <node concept="2OqwBi" id="2JQZWxFbhyT" role="33vP2m">
              <node concept="37vLTw" id="2JQZWxFbhyU" role="2Oq$k0">
                <ref role="3cqZAo" node="7t5VLKHagn4" resolve="template" />
              </node>
              <node concept="liA8E" id="2JQZWxFbhyV" role="2OqNvi">
                <ref role="37wK5l" to="i348:1ffsG7bW$2q" resolve="context" />
                <node concept="37vLTw" id="2JQZWxFbhyW" role="37wK5m">
                  <ref role="3cqZAo" node="7t5VLKHagn6" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2JQZWxFbhCE" role="3cqZAp">
          <node concept="2OqwBi" id="2JQZWxFbhFo" role="3clFbG">
            <node concept="37vLTw" id="2JQZWxFbhCC" role="2Oq$k0">
              <ref role="3cqZAo" node="7t5VLKHagn4" resolve="template" />
            </node>
            <node concept="liA8E" id="2JQZWxFbhRj" role="2OqNvi">
              <ref role="37wK5l" to="i348:PB1R3YsCm9" resolve="initContext" />
              <node concept="37vLTw" id="2JQZWxFbi03" role="37wK5m">
                <ref role="3cqZAo" node="7t5VLKHagn6" resolve="node" />
              </node>
              <node concept="37vLTw" id="2JQZWxFbhTf" role="37wK5m">
                <ref role="3cqZAo" node="2JQZWxFbhyS" resolve="context" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2JQZWxFbjv6" role="16eVyc">
        <property role="TrG5h" value="Context" />
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DywOXd" role="jymVt" />
    <node concept="3clFb_" id="12yN8DywHOS" role="jymVt">
      <property role="TrG5h" value="testApplicable" />
      <node concept="37vLTG" id="12yN8DywN3_" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="1ffsG7c4Iob" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="12yN8DywO11" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="12yN8DywOWo" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7t5VLKHaq7G" role="3clF46">
        <property role="TrG5h" value="boundParam" />
        <node concept="3uibUv" id="7t5VLKHaqOW" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="12yN8DywJJa" role="3clF45" />
      <node concept="3Tm6S6" id="12yN8DywIOC" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DywHOW" role="3clF47">
        <node concept="3SKdUt" id="12yN8Dywplp" role="3cqZAp">
          <node concept="3SKdUq" id="12yN8DywpqY" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3clFbF" id="12yN8DywPWF" role="3cqZAp">
          <node concept="2OqwBi" id="12yN8DywPWH" role="3clFbG">
            <node concept="37vLTw" id="12yN8DywPWI" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DywN3_" resolve="template" />
            </node>
            <node concept="liA8E" id="12yN8DywPWJ" role="2OqNvi">
              <ref role="37wK5l" to="i348:1ffsG7bWA3o" resolve="isApplicable" />
              <node concept="37vLTw" id="12yN8DywPWK" role="37wK5m">
                <ref role="3cqZAo" node="12yN8DywO11" resolve="node" />
              </node>
              <node concept="37vLTw" id="7t5VLKHar9t" role="37wK5m">
                <ref role="3cqZAo" node="7t5VLKHaq7G" resolve="boundParam" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3x8pcoFuFIi" role="jymVt" />
    <node concept="3clFb_" id="3x8pcoFuEOz" role="jymVt">
      <property role="TrG5h" value="testApplicableNoInput" />
      <node concept="37vLTG" id="3x8pcoFuEO$" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="3x8pcoFuEO_" role="1tU5fm">
          <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="3x8pcoFuHl$" role="3clF46">
        <property role="TrG5h" value="postProcess" />
        <node concept="10P_77" id="3x8pcoFuI7m" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3x8pcoFuEOC" role="3clF46">
        <property role="TrG5h" value="boundParam" />
        <node concept="3uibUv" id="3x8pcoFuEOD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="3x8pcoFuEOE" role="3clF45" />
      <node concept="3Tm6S6" id="3x8pcoFuEOF" role="1B3o_S" />
      <node concept="3clFbS" id="3x8pcoFuEOG" role="3clF47">
        <node concept="3SKdUt" id="3x8pcoFuEOH" role="3cqZAp">
          <node concept="3SKdUq" id="3x8pcoFuEOI" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3clFbF" id="3x8pcoFuEOJ" role="3cqZAp">
          <node concept="1Wc70l" id="3x8pcoFuIpW" role="3clFbG">
            <node concept="1eOMI4" id="3x8pcoFuIuT" role="3uHU7w">
              <node concept="3clFbC" id="3x8pcoFuIYs" role="1eOMHV">
                <node concept="37vLTw" id="3x8pcoFuJ2x" role="3uHU7w">
                  <ref role="3cqZAo" node="3x8pcoFuHl$" resolve="postProcess" />
                </node>
                <node concept="2OqwBi" id="3x8pcoFuI_d" role="3uHU7B">
                  <node concept="37vLTw" id="3x8pcoFuIyq" role="2Oq$k0">
                    <ref role="3cqZAo" node="3x8pcoFuEO$" resolve="template" />
                  </node>
                  <node concept="liA8E" id="3x8pcoFuIQ9" role="2OqNvi">
                    <ref role="37wK5l" to="i348:3x8pcoFtaj1" resolve="isPostProcess" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3x8pcoFuEOK" role="3uHU7B">
              <node concept="37vLTw" id="3x8pcoFuEOL" role="2Oq$k0">
                <ref role="3cqZAo" node="3x8pcoFuEO$" resolve="template" />
              </node>
              <node concept="liA8E" id="3x8pcoFuEOM" role="2OqNvi">
                <ref role="37wK5l" to="i348:1ffsG7bWA3o" resolve="isApplicable" />
                <node concept="10Nm6u" id="3x8pcoFuIc1" role="37wK5m" />
                <node concept="37vLTw" id="3x8pcoFuEOO" role="37wK5m">
                  <ref role="3cqZAo" node="3x8pcoFuEOC" resolve="boundParam" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7t5VLKHahfv" role="jymVt" />
    <node concept="312cEu" id="6fdr4Ugfypo" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Collector" />
      <node concept="2tJIrI" id="12yN8DyFmwH" role="jymVt" />
      <node concept="3clFb_" id="6fdr4Ugfypq" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="addTemplate" />
        <node concept="37vLTG" id="6fdr4Ugfypr" role="3clF46">
          <property role="TrG5h" value="ruleTemplate" />
          <node concept="3uibUv" id="1ffsG7c3XH9" role="1tU5fm">
            <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
            <node concept="3qTvmN" id="1ffsG7c3XTU" role="11_B2D" />
          </node>
        </node>
        <node concept="3cqZAl" id="6fdr4Ugfypt" role="3clF45" />
        <node concept="3Tm1VV" id="6fdr4Ugfypu" role="1B3o_S" />
        <node concept="3clFbS" id="6fdr4Ugfypv" role="3clF47">
          <node concept="3cpWs8" id="12yN8DyF8dC" role="3cqZAp">
            <node concept="3cpWsn" id="12yN8DyF8dD" role="3cpWs9">
              <property role="TrG5h" value="templates" />
              <node concept="3vKaQO" id="12yN8DyF8dz" role="1tU5fm">
                <node concept="3uibUv" id="1ffsG7c4i2u" role="3O5elw">
                  <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                </node>
              </node>
              <node concept="3EllGN" id="12yN8DyF8dE" role="33vP2m">
                <node concept="2OqwBi" id="12yN8DyF8dF" role="3ElVtu">
                  <node concept="37vLTw" id="12yN8DyF8dG" role="2Oq$k0">
                    <ref role="3cqZAo" node="6fdr4Ugfypr" resolve="ruleTemplate" />
                  </node>
                  <node concept="liA8E" id="12yN8DyF8dH" role="2OqNvi">
                    <ref role="37wK5l" to="i348:1ffsG7bWxkw" resolve="applicableConcept" />
                  </node>
                </node>
                <node concept="37vLTw" id="12yN8DyF8dI" role="3ElQJh">
                  <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="12yN8DyF8Lh" role="3cqZAp">
            <node concept="3clFbS" id="12yN8DyF8Lk" role="3clFbx">
              <node concept="3clFbF" id="12yN8DyFb4a" role="3cqZAp">
                <node concept="37vLTI" id="12yN8DyFb$s" role="3clFbG">
                  <node concept="1eOMI4" id="12yN8DyFbPy" role="37vLTx">
                    <node concept="37vLTI" id="12yN8DyFcW3" role="1eOMHV">
                      <node concept="2ShNRf" id="12yN8DyFd3p" role="37vLTx">
                        <node concept="Tc6Ow" id="12yN8DyFgDP" role="2ShVmc">
                          <node concept="3uibUv" id="1ffsG7c4k6n" role="HW$YZ">
                            <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="12yN8DyFcwR" role="37vLTJ">
                        <ref role="3cqZAo" node="12yN8DyF8dD" resolve="templates" />
                      </node>
                    </node>
                  </node>
                  <node concept="3EllGN" id="12yN8DyFb4c" role="37vLTJ">
                    <node concept="2OqwBi" id="12yN8DyFb4d" role="3ElVtu">
                      <node concept="37vLTw" id="12yN8DyFb4e" role="2Oq$k0">
                        <ref role="3cqZAo" node="6fdr4Ugfypr" resolve="ruleTemplate" />
                      </node>
                      <node concept="liA8E" id="12yN8DyFb4f" role="2OqNvi">
                        <ref role="37wK5l" to="i348:1ffsG7bWxkw" resolve="applicableConcept" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="12yN8DyFb4g" role="3ElQJh">
                      <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="12yN8DyF9ku" role="3clFbw">
              <node concept="10Nm6u" id="12yN8DyF9rO" role="3uHU7w" />
              <node concept="37vLTw" id="12yN8DyF8Ts" role="3uHU7B">
                <ref role="3cqZAo" node="12yN8DyF8dD" resolve="templates" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="12yN8DyF7fx" role="3cqZAp">
            <node concept="2OqwBi" id="12yN8DyFhYa" role="3clFbG">
              <node concept="37vLTw" id="12yN8DyF8dJ" role="2Oq$k0">
                <ref role="3cqZAo" node="12yN8DyF8dD" resolve="templates" />
              </node>
              <node concept="TSZUe" id="12yN8DyFjVE" role="2OqNvi">
                <node concept="37vLTw" id="12yN8DyFjYm" role="25WWJ7">
                  <ref role="3cqZAo" node="6fdr4Ugfypr" resolve="ruleTemplate" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="12yN8DyFtSY" role="jymVt" />
      <node concept="3Tm6S6" id="12yN8DyF9w7" role="1B3o_S" />
      <node concept="3uibUv" id="6fdr4Ugfypy" role="EKbjA">
        <ref role="3uigEE" to="i348:4OKkcnfu_A6" resolve="RuleTemplateCollector" />
      </node>
    </node>
    <node concept="2tJIrI" id="6fdr4UgfynW" role="jymVt" />
    <node concept="312cEg" id="12yN8DyvDfi" role="jymVt">
      <property role="TrG5h" value="myTemplates" />
      <node concept="3Tm6S6" id="12yN8DyvDfj" role="1B3o_S" />
      <node concept="3rvAFt" id="12yN8Dyw7uY" role="1tU5fm">
        <node concept="3bZ5Sz" id="YGS68MZPLr" role="3rvQeY" />
        <node concept="3vKaQO" id="12yN8DyDzne" role="3rvSg0">
          <node concept="3uibUv" id="1ffsG7c47Mm" role="3O5elw">
            <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="429xoypKEom" role="33vP2m">
        <node concept="3rGOSV" id="429xoypKEon" role="2ShVmc">
          <node concept="3bZ5Sz" id="YGS68MZQMl" role="3rHrn6" />
          <node concept="3vKaQO" id="429xoypKEop" role="3rHtpV">
            <node concept="3uibUv" id="429xoypKEoq" role="3O5elw">
              <ref role="3uigEE" to="i348:1ffsG7bW_V4" resolve="RuleTemplate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyvDd7" role="jymVt" />
    <node concept="3Tm1VV" id="6fdr4UgftiH" role="1B3o_S" />
    <node concept="312cEg" id="429xoypKGG_" role="jymVt">
      <property role="TrG5h" value="ruleTemplateManifest" />
      <node concept="3Tm6S6" id="429xoypKGGA" role="1B3o_S" />
      <node concept="3uibUv" id="429xoypKGGC" role="1tU5fm">
        <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="12yN8DyNqdl">
    <property role="TrG5h" value="NodeWalker" />
    <node concept="2tJIrI" id="12yN8DyNqdN" role="jymVt" />
    <node concept="3HP615" id="12yN8DyNqe8" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="NodeAction" />
      <node concept="2tJIrI" id="12yN8DyNqeC" role="jymVt" />
      <node concept="3clFb_" id="12yN8DyNqeO" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="doAction" />
        <node concept="37vLTG" id="12yN8DyNqfm" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3Tqbb2" id="12yN8DyNqgv" role="1tU5fm" />
        </node>
        <node concept="16syzq" id="tIwzd1IBoE" role="3clF45">
          <ref role="16sUi3" node="tIwzd1IBnx" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="12yN8DyNqeR" role="1B3o_S" />
        <node concept="3clFbS" id="12yN8DyNqeS" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="tIwzd1IBNS" role="jymVt" />
      <node concept="3clFb_" id="tIwzd1IBXa" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="bind" />
        <node concept="37vLTG" id="tIwzd1IBZO" role="3clF46">
          <property role="TrG5h" value="a" />
          <node concept="16syzq" id="tIwzd1IC03" role="1tU5fm">
            <ref role="16sUi3" node="tIwzd1IBnx" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="tIwzd1IC0A" role="3clF46">
          <property role="TrG5h" value="b" />
          <node concept="16syzq" id="tIwzd1IC1d" role="1tU5fm">
            <ref role="16sUi3" node="tIwzd1IBnx" resolve="T" />
          </node>
        </node>
        <node concept="16syzq" id="tIwzd1IBZw" role="3clF45">
          <ref role="16sUi3" node="tIwzd1IBnx" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="tIwzd1IBXe" role="1B3o_S" />
        <node concept="3clFbS" id="tIwzd1IBXf" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="tIwzd1ILRQ" role="jymVt" />
      <node concept="3clFb_" id="tIwzd1ILXm" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="initial" />
        <node concept="16syzq" id="tIwzd1IM3B" role="3clF45">
          <ref role="16sUi3" node="tIwzd1IBnx" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="tIwzd1ILXp" role="1B3o_S" />
        <node concept="3clFbS" id="tIwzd1ILXq" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="12yN8DyNqfE" role="jymVt" />
      <node concept="3Tm1VV" id="12yN8DyNqe9" role="1B3o_S" />
      <node concept="16euLQ" id="tIwzd1IBnx" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3UR2Jj" id="tIwzd1IT_8" role="lGtFl">
        <node concept="TZ5HA" id="tIwzd1IT_9" role="TZ5H$">
          <node concept="1dT_AC" id="tIwzd1IT_a" role="1dT_Ay">
            <property role="1dT_AB" value="Just a monoid." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8GjA47" role="jymVt" />
    <node concept="3clFbW" id="12yN8DyNqja" role="jymVt">
      <node concept="37vLTG" id="12yN8DyNqjA" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="3uibUv" id="12yN8DyNqjI" role="1tU5fm">
          <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
          <node concept="16syzq" id="tIwzd1IBE1" role="11_B2D">
            <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="12yN8DyNqjc" role="3clF45" />
      <node concept="3Tm1VV" id="12yN8DyNqjd" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyNqje" role="3clF47">
        <node concept="3clFbF" id="12yN8DyNqkk" role="3cqZAp">
          <node concept="37vLTI" id="12yN8DyNqkm" role="3clFbG">
            <node concept="2OqwBi" id="12yN8DyNqkq" role="37vLTJ">
              <node concept="Xjq3P" id="12yN8DyNqkt" role="2Oq$k0" />
              <node concept="2OwXpG" id="12yN8DyNqkp" role="2OqNvi">
                <ref role="2Oxat5" node="12yN8DyNqkg" resolve="action" />
              </node>
            </node>
            <node concept="37vLTw" id="12yN8DyNqku" role="37vLTx">
              <ref role="3cqZAo" node="12yN8DyNqjA" resolve="action" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyNqiy" role="jymVt" />
    <node concept="3clFb_" id="12yN8DyNqZ$" role="jymVt">
      <property role="TrG5h" value="deepWalk" />
      <node concept="37vLTG" id="12yN8DyNrfg" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="12yN8DyNrkx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="tIwzd1LkvH" role="3clF46">
        <property role="TrG5h" value="interfacePart" />
        <node concept="10P_77" id="tIwzd1LkJy" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="tIwzd1J3Vh" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="12yN8DyNqZB" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyNqZC" role="3clF47">
        <node concept="3clFbF" id="5ntLU8GjygK" role="3cqZAp">
          <node concept="1rXfSq" id="5ntLU8GjygL" role="3clFbG">
            <ref role="37wK5l" node="tIwzd1KZV6" resolve="walk" />
            <node concept="37vLTw" id="5ntLU8GjygM" role="37wK5m">
              <ref role="3cqZAo" node="12yN8DyNrfg" resolve="root" />
            </node>
            <node concept="3clFbT" id="5ntLU8GjygN" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyNqUW" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1L9h1" role="jymVt">
      <property role="TrG5h" value="surfaceWalk" />
      <node concept="37vLTG" id="tIwzd1Lb4K" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="tIwzd1LbgY" role="1tU5fm">
          <node concept="3Tqbb2" id="tIwzd1Lc8p" role="A3Ik2" />
        </node>
      </node>
      <node concept="16syzq" id="tIwzd1LapD" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="tIwzd1L9h4" role="1B3o_S" />
      <node concept="3clFbS" id="tIwzd1L9h5" role="3clF47">
        <node concept="3clFbF" id="tIwzd1Lce_" role="3cqZAp">
          <node concept="1rXfSq" id="tIwzd1Lce$" role="3clFbG">
            <ref role="37wK5l" node="tIwzd1KVkc" resolve="visitAll" />
            <node concept="37vLTw" id="tIwzd1Lcgh" role="37wK5m">
              <ref role="3cqZAo" node="tIwzd1Lb4K" resolve="nodes" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1L0E2" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1KZV6" role="jymVt">
      <property role="TrG5h" value="walk" />
      <node concept="37vLTG" id="tIwzd1KZV7" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="tIwzd1KZV8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="tIwzd1KZV9" role="3clF46">
        <property role="TrG5h" value="intefacePart" />
        <node concept="10P_77" id="tIwzd1KZVa" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="tIwzd1KZVb" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="3Tm6S6" id="tIwzd1KZVc" role="1B3o_S" />
      <node concept="3clFbS" id="tIwzd1KZVd" role="3clF47">
        <node concept="3clFbF" id="tIwzd1L1ch" role="3cqZAp">
          <node concept="1rXfSq" id="tIwzd1L1cf" role="3clFbG">
            <ref role="37wK5l" node="tIwzd1KVkc" resolve="visitAll" />
            <node concept="2ShNRf" id="tIwzd1L1gz" role="37wK5m">
              <node concept="kMnCb" id="tIwzd1L1m4" role="2ShVmc">
                <node concept="3Tqbb2" id="tIwzd1L1mK" role="kMuH3" />
                <node concept="1bVj0M" id="tIwzd1L1ni" role="kMx8a">
                  <node concept="3clFbS" id="tIwzd1L1nj" role="1bW5cS">
                    <node concept="3cpWs8" id="tIwzd1KZVi" role="3cqZAp">
                      <node concept="3cpWsn" id="tIwzd1KZVj" role="3cpWs9">
                        <property role="TrG5h" value="queue" />
                        <node concept="3O6Q9H" id="tIwzd1KZVk" role="1tU5fm">
                          <node concept="3Tqbb2" id="tIwzd1KZVl" role="3O5elw" />
                        </node>
                        <node concept="2ShNRf" id="tIwzd1KZVm" role="33vP2m">
                          <node concept="2Jqq0_" id="tIwzd1KZVn" role="2ShVmc">
                            <node concept="3Tqbb2" id="tIwzd1KZVo" role="HW$YZ" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="tIwzd1KZVp" role="3cqZAp">
                      <node concept="2OqwBi" id="tIwzd1KZVq" role="3clFbG">
                        <node concept="37vLTw" id="tIwzd1KZVr" role="2Oq$k0">
                          <ref role="3cqZAo" node="tIwzd1KZVj" resolve="queue" />
                        </node>
                        <node concept="2Ke9KJ" id="tIwzd1KZVs" role="2OqNvi">
                          <node concept="37vLTw" id="tIwzd1KZVt" role="25WWJ7">
                            <ref role="3cqZAo" node="tIwzd1KZV7" resolve="root" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="tIwzd1L4x7" role="3cqZAp" />
                    <node concept="2$JKZl" id="tIwzd1KZVv" role="3cqZAp">
                      <node concept="3clFbS" id="tIwzd1KZVw" role="2LFqv$">
                        <node concept="3cpWs8" id="tIwzd1KZVx" role="3cqZAp">
                          <node concept="3cpWsn" id="tIwzd1KZVy" role="3cpWs9">
                            <property role="TrG5h" value="next" />
                            <node concept="3Tqbb2" id="tIwzd1KZVz" role="1tU5fm" />
                            <node concept="2OqwBi" id="tIwzd1KZV$" role="33vP2m">
                              <node concept="37vLTw" id="tIwzd1KZV_" role="2Oq$k0">
                                <ref role="3cqZAo" node="tIwzd1KZVj" resolve="queue" />
                              </node>
                              <node concept="2Kt2Hk" id="tIwzd1KZVA" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="tIwzd1KZVB" role="3cqZAp" />
                        <node concept="2n63Yl" id="tIwzd1L4pf" role="3cqZAp">
                          <node concept="37vLTw" id="tIwzd1L4tR" role="2n6tg2">
                            <ref role="3cqZAo" node="tIwzd1KZVy" resolve="next" />
                          </node>
                        </node>
                        <node concept="3clFbH" id="tIwzd1KZVN" role="3cqZAp" />
                        <node concept="1DcWWT" id="tIwzd1KZVO" role="3cqZAp">
                          <node concept="3clFbS" id="tIwzd1KZVP" role="2LFqv$">
                            <node concept="3clFbJ" id="3g$8GQCjqwD" role="3cqZAp">
                              <node concept="3clFbS" id="3g$8GQCjqwF" role="3clFbx">
                                <node concept="3N13vt" id="3g$8GQCjqQk" role="3cqZAp" />
                              </node>
                              <node concept="2OqwBi" id="3g$8GQCjqAU" role="3clFbw">
                                <node concept="37vLTw" id="3g$8GQCjq$K" role="2Oq$k0">
                                  <ref role="3cqZAo" node="tIwzd1KZWc" resolve="ch" />
                                </node>
                                <node concept="1BlSNk" id="3g$8GQCjqI4" role="2OqNvi">
                                  <ref role="1BmUXE" to="tpck:gw2VY9q" resolve="BaseConcept" />
                                  <ref role="1Bn3mz" to="tpck:4uZwTti3__2" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="tIwzd1KZVQ" role="3cqZAp">
                              <property role="TyiWK" value="true" />
                              <property role="TyiWL" value="false" />
                              <node concept="3clFbS" id="tIwzd1KZVR" role="3clFbx">
                                <node concept="3N13vt" id="tIwzd1KZVS" role="3cqZAp" />
                              </node>
                              <node concept="1Wc70l" id="tIwzd1KZVT" role="3clFbw">
                                <node concept="1eOMI4" id="tIwzd1KZVU" role="3uHU7w">
                                  <node concept="1Wc70l" id="tIwzd1KZVV" role="1eOMHV">
                                    <node concept="3fqX7Q" id="tIwzd1KZVW" role="3uHU7B">
                                      <node concept="2OqwBi" id="tIwzd1KZVX" role="3fr31v">
                                        <node concept="37vLTw" id="tIwzd1KZVY" role="2Oq$k0">
                                          <ref role="3cqZAo" node="tIwzd1KZVy" resolve="next" />
                                        </node>
                                        <node concept="1mIQ4w" id="tIwzd1KZVZ" role="2OqNvi">
                                          <node concept="chp4Y" id="tIwzd1KZW0" role="cj9EA">
                                            <ref role="cht4Q" to="tpck:19gBtYEAf4C" resolve="InterfacePart" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="tIwzd1KZW1" role="3uHU7w">
                                      <node concept="37vLTw" id="tIwzd1KZW2" role="2Oq$k0">
                                        <ref role="3cqZAo" node="tIwzd1KZVy" resolve="next" />
                                      </node>
                                      <node concept="1mIQ4w" id="tIwzd1KZW3" role="2OqNvi">
                                        <node concept="chp4Y" id="tIwzd1KZW4" role="cj9EA">
                                          <ref role="cht4Q" to="tpck:19gBtYEv0ln" resolve="ImplementationPart" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="tIwzd1KZW5" role="3uHU7B">
                                  <ref role="3cqZAo" node="tIwzd1KZV9" resolve="intefacePart" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="tIwzd1KZW6" role="3cqZAp" />
                            <node concept="3clFbF" id="tIwzd1KZW7" role="3cqZAp">
                              <node concept="2OqwBi" id="tIwzd1KZW8" role="3clFbG">
                                <node concept="37vLTw" id="tIwzd1KZW9" role="2Oq$k0">
                                  <ref role="3cqZAo" node="tIwzd1KZVj" resolve="queue" />
                                </node>
                                <node concept="2Ke9KJ" id="tIwzd1KZWa" role="2OqNvi">
                                  <node concept="37vLTw" id="tIwzd1KZWb" role="25WWJ7">
                                    <ref role="3cqZAo" node="tIwzd1KZWc" resolve="ch" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="tIwzd1KZWc" role="1Duv9x">
                            <property role="TrG5h" value="ch" />
                            <node concept="3Tqbb2" id="tIwzd1KZWd" role="1tU5fm" />
                          </node>
                          <node concept="2OqwBi" id="tIwzd1KZWe" role="1DdaDG">
                            <node concept="37vLTw" id="tIwzd1KZWf" role="2Oq$k0">
                              <ref role="3cqZAo" node="tIwzd1KZVy" resolve="next" />
                            </node>
                            <node concept="32TBzR" id="tIwzd1KZWg" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="tIwzd1KZWh" role="2$JKZa">
                        <node concept="2OqwBi" id="tIwzd1KZWi" role="3fr31v">
                          <node concept="37vLTw" id="tIwzd1KZWj" role="2Oq$k0">
                            <ref role="3cqZAo" node="tIwzd1KZVj" resolve="queue" />
                          </node>
                          <node concept="1v1jN8" id="tIwzd1KZWk" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1KW0S" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1KVkc" role="jymVt">
      <property role="TrG5h" value="visitAll" />
      <node concept="37vLTG" id="tIwzd1KVkd" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="tIwzd1KZEw" role="1tU5fm">
          <node concept="3Tqbb2" id="tIwzd1KZEy" role="A3Ik2" />
        </node>
      </node>
      <node concept="16syzq" id="tIwzd1KVkh" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="3Tm6S6" id="tIwzd1KVki" role="1B3o_S" />
      <node concept="3clFbS" id="tIwzd1KVkj" role="3clF47">
        <node concept="3cpWs8" id="tIwzd1KVkk" role="3cqZAp">
          <node concept="3cpWsn" id="tIwzd1KVkl" role="3cpWs9">
            <property role="TrG5h" value="accVal" />
            <node concept="16syzq" id="tIwzd1KVkm" role="1tU5fm">
              <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
            </node>
            <node concept="1rXfSq" id="tIwzd1KVkn" role="33vP2m">
              <ref role="37wK5l" node="tIwzd1IMOE" resolve="initVal" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1KVk$" role="3cqZAp" />
        <node concept="2Gpval" id="tIwzd1KYf$" role="3cqZAp">
          <node concept="2GrKxI" id="tIwzd1KYfA" role="2Gsz3X">
            <property role="TrG5h" value="next" />
          </node>
          <node concept="3clFbS" id="tIwzd1KYfC" role="2LFqv$">
            <node concept="3cpWs8" id="tIwzd1KVkI" role="3cqZAp">
              <node concept="3cpWsn" id="tIwzd1KVkJ" role="3cpWs9">
                <property role="TrG5h" value="nextVal" />
                <node concept="16syzq" id="tIwzd1KVkK" role="1tU5fm">
                  <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
                </node>
                <node concept="1rXfSq" id="tIwzd1KVkL" role="33vP2m">
                  <ref role="37wK5l" node="5ntLU8Gjd9b" resolve="nodeAction" />
                  <node concept="2GrUjf" id="tIwzd1KZp6" role="37wK5m">
                    <ref role="2Gs0qQ" node="tIwzd1KYfA" resolve="next" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="tIwzd1KVkN" role="3cqZAp">
              <node concept="37vLTI" id="tIwzd1KVkO" role="3clFbG">
                <node concept="37vLTw" id="tIwzd1KVkP" role="37vLTJ">
                  <ref role="3cqZAo" node="tIwzd1KVkl" resolve="accVal" />
                </node>
                <node concept="1rXfSq" id="tIwzd1KVkQ" role="37vLTx">
                  <ref role="37wK5l" node="tIwzd1IFga" resolve="bindVal" />
                  <node concept="37vLTw" id="tIwzd1KVkR" role="37wK5m">
                    <ref role="3cqZAo" node="tIwzd1KVkl" resolve="accVal" />
                  </node>
                  <node concept="37vLTw" id="tIwzd1KVkS" role="37wK5m">
                    <ref role="3cqZAo" node="tIwzd1KVkJ" resolve="nextVal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="tIwzd1KVkT" role="3cqZAp" />
          </node>
          <node concept="37vLTw" id="tIwzd1KYjj" role="2GsD0m">
            <ref role="3cqZAo" node="tIwzd1KVkd" resolve="nodes" />
          </node>
        </node>
        <node concept="3clFbH" id="tIwzd1KYwf" role="3cqZAp" />
        <node concept="3clFbF" id="tIwzd1KVlr" role="3cqZAp">
          <node concept="37vLTw" id="tIwzd1KVls" role="3clFbG">
            <ref role="3cqZAo" node="tIwzd1KVkl" resolve="accVal" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1IFAt" role="jymVt" />
    <node concept="3clFb_" id="5ntLU8Gjd9b" role="jymVt">
      <property role="TrG5h" value="nodeAction" />
      <node concept="3Tm6S6" id="5ntLU8Gjd9c" role="1B3o_S" />
      <node concept="16syzq" id="tIwzd1IDaH" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="37vLTG" id="5ntLU8Gjd96" role="3clF46">
        <property role="TrG5h" value="next" />
        <node concept="3Tqbb2" id="5ntLU8Gjd97" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5ntLU8Gjd90" role="3clF47">
        <node concept="3SKdUt" id="5ntLU8GjdpF" role="3cqZAp">
          <node concept="3SKdUq" id="5ntLU8Gjdrq" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3clFbF" id="5ntLU8Gjd91" role="3cqZAp">
          <node concept="2OqwBi" id="5ntLU8Gjd92" role="3clFbG">
            <node concept="37vLTw" id="5ntLU8Gjd93" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DyNqkg" resolve="action" />
            </node>
            <node concept="liA8E" id="5ntLU8Gjd94" role="2OqNvi">
              <ref role="37wK5l" node="12yN8DyNqeO" resolve="doAction" />
              <node concept="37vLTw" id="5ntLU8Gjd98" role="37wK5m">
                <ref role="3cqZAo" node="5ntLU8Gjd96" resolve="next" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyNqdS" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1IFga" role="jymVt">
      <property role="TrG5h" value="bindVal" />
      <node concept="3Tm6S6" id="tIwzd1IFgb" role="1B3o_S" />
      <node concept="16syzq" id="tIwzd1IFgc" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="37vLTG" id="tIwzd1IFaM" role="3clF46">
        <property role="TrG5h" value="prevVal" />
        <node concept="16syzq" id="tIwzd1IFaN" role="1tU5fm">
          <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="tIwzd1IFaO" role="3clF46">
        <property role="TrG5h" value="nextVal" />
        <node concept="16syzq" id="tIwzd1IFaP" role="1tU5fm">
          <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="tIwzd1IF5q" role="3clF47">
        <node concept="3SKdUt" id="tIwzd1IFpr" role="3cqZAp">
          <node concept="3SKdUq" id="tIwzd1IFps" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3clFbF" id="tIwzd1IFwV" role="3cqZAp">
          <node concept="2OqwBi" id="tIwzd1IFaH" role="3clFbG">
            <node concept="37vLTw" id="tIwzd1IFaI" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DyNqkg" resolve="action" />
            </node>
            <node concept="liA8E" id="tIwzd1IFaJ" role="2OqNvi">
              <ref role="37wK5l" node="tIwzd1IBXa" resolve="bind" />
              <node concept="37vLTw" id="tIwzd1IFaQ" role="37wK5m">
                <ref role="3cqZAo" node="tIwzd1IFaM" resolve="prevVal" />
              </node>
              <node concept="37vLTw" id="tIwzd1IFaR" role="37wK5m">
                <ref role="3cqZAo" node="tIwzd1IFaO" resolve="nextVal" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="tIwzd1INIy" role="jymVt" />
    <node concept="3clFb_" id="tIwzd1IMOE" role="jymVt">
      <property role="TrG5h" value="initVal" />
      <node concept="3Tm6S6" id="tIwzd1IMOF" role="1B3o_S" />
      <node concept="16syzq" id="tIwzd1IMOG" role="3clF45">
        <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
      </node>
      <node concept="3clFbS" id="tIwzd1IMN2" role="3clF47">
        <node concept="3SKdUt" id="tIwzd1INSy" role="3cqZAp">
          <node concept="3SKdUq" id="tIwzd1INSz" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3cpWs6" id="tIwzd1IMNO" role="3cqZAp">
          <node concept="2OqwBi" id="tIwzd1IMNP" role="3cqZAk">
            <node concept="37vLTw" id="tIwzd1IMNQ" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DyNqkg" resolve="action" />
            </node>
            <node concept="liA8E" id="tIwzd1IMNR" role="2OqNvi">
              <ref role="37wK5l" node="tIwzd1ILXm" resolve="initial" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8GjdgN" role="jymVt" />
    <node concept="3Tm1VV" id="12yN8DyNqdm" role="1B3o_S" />
    <node concept="312cEg" id="12yN8DyNqkg" role="jymVt">
      <property role="TrG5h" value="action" />
      <node concept="3Tm6S6" id="12yN8DyNqkh" role="1B3o_S" />
      <node concept="3uibUv" id="12yN8DyNqkj" role="1tU5fm">
        <ref role="3uigEE" node="12yN8DyNqe8" resolve="NodeWalker.NodeAction" />
        <node concept="16syzq" id="tIwzd1ID1q" role="11_B2D">
          <ref role="16sUi3" node="tIwzd1IC9f" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="16euLQ" id="tIwzd1IC9f" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="2tjs8VC0K0m">
    <property role="TrG5h" value="Memoizer" />
    <node concept="2tJIrI" id="2tjs8VC0K2N" role="jymVt" />
    <node concept="2YIFZL" id="2tjs8VC0VB5" role="jymVt">
      <property role="TrG5h" value="fromContext" />
      <node concept="3uibUv" id="2tjs8VC12Co" role="3clF45">
        <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
      </node>
      <node concept="3Tm1VV" id="2tjs8VC0VB8" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC0VB9" role="3clF47">
        <node concept="3clFbJ" id="2k2r9bMc1fJ" role="3cqZAp">
          <node concept="3clFbS" id="2k2r9bMc1fL" role="3clFbx">
            <node concept="YS8fn" id="2k2r9bMc2qm" role="3cqZAp">
              <node concept="2ShNRf" id="2k2r9bMc2Gn" role="YScLw">
                <node concept="1pGfFk" id="2k2r9bMc8hl" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="2k2r9bMc8Pw" role="37wK5m">
                    <property role="Xl_RC" value="not initialized" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2k2r9bMc1P1" role="3clFbw">
            <node concept="10Nm6u" id="2k2r9bMc26V" role="3uHU7w" />
            <node concept="37vLTw" id="2k2r9bMc1yi" role="3uHU7B">
              <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC1aA_" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC1aJQ" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC1aA$" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
            </node>
            <node concept="liA8E" id="2tjs8VC1bcJ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~ThreadLocal.get():java.lang.Object" resolve="get" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC1ar1" role="jymVt" />
    <node concept="2YIFZL" id="2k2r9bMbV$8" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="2k2r9bMbV$a" role="3clF45" />
      <node concept="3Tm1VV" id="2k2r9bMbV$b" role="1B3o_S" />
      <node concept="3clFbS" id="2k2r9bMbV$c" role="3clF47">
        <node concept="3clFbF" id="2k2r9bMbZee" role="3cqZAp">
          <node concept="37vLTI" id="2k2r9bMbZwp" role="3clFbG">
            <node concept="37vLTw" id="2k2r9bMbZed" role="37vLTJ">
              <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
            </node>
            <node concept="2ShNRf" id="2k2r9bMbZMc" role="37vLTx">
              <node concept="YeOm9" id="2k2r9bMbZMd" role="2ShVmc">
                <node concept="1Y3b0j" id="2k2r9bMbZMe" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
                  <ref role="37wK5l" to="wyt6:~ThreadLocal.&lt;init&gt;()" resolve="ThreadLocal" />
                  <node concept="3Tm1VV" id="2k2r9bMbZMf" role="1B3o_S" />
                  <node concept="3uibUv" id="2k2r9bMbZMg" role="2Ghqu4">
                    <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
                  </node>
                  <node concept="3clFb_" id="2k2r9bMbZMh" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="initialValue" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tmbuc" id="2k2r9bMbZMi" role="1B3o_S" />
                    <node concept="3uibUv" id="2k2r9bMbZMj" role="3clF45">
                      <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
                    </node>
                    <node concept="3clFbS" id="2k2r9bMbZMk" role="3clF47">
                      <node concept="3clFbF" id="2k2r9bMbZMl" role="3cqZAp">
                        <node concept="10Nm6u" id="2k2r9bMbZMm" role="3clFbG" />
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="2k2r9bMbZMn" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2k2r9bMbJxK" role="jymVt" />
    <node concept="2YIFZL" id="2k2r9bMbWB2" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="2k2r9bMbWB4" role="3clF45" />
      <node concept="3Tm1VV" id="2k2r9bMbWB5" role="1B3o_S" />
      <node concept="3clFbS" id="2k2r9bMbWB6" role="3clF47">
        <node concept="3clFbF" id="2k2r9bMbXHl" role="3cqZAp">
          <node concept="37vLTI" id="2k2r9bMbXYY" role="3clFbG">
            <node concept="10Nm6u" id="2k2r9bMbYgf" role="37vLTx" />
            <node concept="37vLTw" id="2k2r9bMbXHk" role="37vLTJ">
              <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2k2r9bMbJEn" role="jymVt" />
    <node concept="2YIFZL" id="2tjs8VC1byF" role="jymVt">
      <property role="TrG5h" value="push" />
      <node concept="3cqZAl" id="2tjs8VC1byH" role="3clF45" />
      <node concept="3Tm1VV" id="2tjs8VC1byI" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC1byJ" role="3clF47">
        <node concept="3cpWs8" id="2tjs8VC1cVW" role="3cqZAp">
          <node concept="3cpWsn" id="2tjs8VC1cVX" role="3cpWs9">
            <property role="TrG5h" value="curr" />
            <node concept="3uibUv" id="2tjs8VC1cVN" role="1tU5fm">
              <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
            </node>
            <node concept="2OqwBi" id="2tjs8VC1cVY" role="33vP2m">
              <node concept="37vLTw" id="2tjs8VC1cVZ" role="2Oq$k0">
                <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
              </node>
              <node concept="liA8E" id="2tjs8VC1cW0" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~ThreadLocal.get():java.lang.Object" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC1dCc" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC1dMh" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC1dCa" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
            </node>
            <node concept="liA8E" id="2tjs8VC1dWX" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object):void" resolve="set" />
              <node concept="2ShNRf" id="2tjs8VC1e6B" role="37wK5m">
                <node concept="1pGfFk" id="2tjs8VC1exZ" role="2ShVmc">
                  <ref role="37wK5l" node="2tjs8VC15lz" resolve="Memoizer" />
                  <node concept="37vLTw" id="2tjs8VC1eFO" role="37wK5m">
                    <ref role="3cqZAo" node="2tjs8VC1cVX" resolve="curr" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC1eP8" role="jymVt" />
    <node concept="2YIFZL" id="2tjs8VC1f3O" role="jymVt">
      <property role="TrG5h" value="pop" />
      <node concept="3cqZAl" id="2tjs8VC1f3Q" role="3clF45" />
      <node concept="3Tm1VV" id="2tjs8VC1f3R" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC1f3S" role="3clF47">
        <node concept="3cpWs8" id="2tjs8VC1g0D" role="3cqZAp">
          <node concept="3cpWsn" id="2tjs8VC1g0E" role="3cpWs9">
            <property role="TrG5h" value="curr" />
            <node concept="3uibUv" id="2tjs8VC1g0h" role="1tU5fm">
              <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
            </node>
            <node concept="2OqwBi" id="2tjs8VC1g0F" role="33vP2m">
              <node concept="37vLTw" id="2tjs8VC1g0G" role="2Oq$k0">
                <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
              </node>
              <node concept="liA8E" id="2tjs8VC1g0H" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~ThreadLocal.get():java.lang.Object" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2tjs8VC1gvV" role="3cqZAp">
          <node concept="3clFbS" id="2tjs8VC1gvX" role="3clFbx">
            <node concept="YS8fn" id="2tjs8VC1hvu" role="3cqZAp">
              <node concept="2ShNRf" id="2tjs8VC1hZa" role="YScLw">
                <node concept="1pGfFk" id="2tjs8VC1iqO" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~NullPointerException.&lt;init&gt;()" resolve="NullPointerException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2tjs8VC1h9e" role="3clFbw">
            <node concept="10Nm6u" id="2tjs8VC1hjF" role="3uHU7w" />
            <node concept="37vLTw" id="2tjs8VC1gEu" role="3uHU7B">
              <ref role="3cqZAo" node="2tjs8VC1g0E" resolve="curr" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC1jBY" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC1jNz" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC1jBW" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC16TI" resolve="current" />
            </node>
            <node concept="liA8E" id="2tjs8VC1jZK" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~ThreadLocal.set(java.lang.Object):void" resolve="set" />
              <node concept="2OqwBi" id="2tjs8VC1km2" role="37wK5m">
                <node concept="37vLTw" id="2tjs8VC1kbj" role="2Oq$k0">
                  <ref role="3cqZAo" node="2tjs8VC1g0E" resolve="curr" />
                </node>
                <node concept="2OwXpG" id="2tjs8VC1kxK" role="2OqNvi">
                  <ref role="2Oxat5" node="2tjs8VC13tT" resolve="prev" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC1mO1" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC1mZE" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC1mNZ" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC1g0E" resolve="curr" />
            </node>
            <node concept="liA8E" id="2tjs8VC1ncA" role="2OqNvi">
              <ref role="37wK5l" node="2tjs8VC1kVc" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC1bne" role="jymVt" />
    <node concept="2YIFZL" id="2tjs8VC2_Fr" role="jymVt">
      <property role="TrG5h" value="set" />
      <node concept="37vLTG" id="2tjs8VC2De3" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC2DuA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2tjs8VC2EaW" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="2tjs8VC2Esr" role="1tU5fm">
          <ref role="16sUi3" node="2tjs8VC2AEZ" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="2tjs8VC2CJE" role="3clF45" />
      <node concept="3Tm1VV" id="2tjs8VC2_Fu" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC2_Fv" role="3clF47">
        <node concept="3clFbF" id="2tjs8VC2FaW" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC2FpB" role="3clFbG">
            <node concept="1rXfSq" id="2tjs8VC2FaV" role="2Oq$k0">
              <ref role="37wK5l" node="2tjs8VC0VB5" resolve="fromContext" />
            </node>
            <node concept="liA8E" id="2tjs8VC2FEp" role="2OqNvi">
              <ref role="37wK5l" node="2tjs8VC0VJ9" resolve="setValue" />
              <node concept="37vLTw" id="2tjs8VC2FT$" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC2De3" resolve="token" />
              </node>
              <node concept="37vLTw" id="2tjs8VC2Gnp" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC2EaW" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2tjs8VC2AEZ" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC2Csg" role="jymVt" />
    <node concept="2YIFZL" id="2tjs8VC2Csb" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="16syzq" id="2tjs8VC2Csc" role="3clF45">
        <ref role="16sUi3" node="2tjs8VC2Csf" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="2tjs8VC2Csd" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC2Cse" role="3clF47">
        <node concept="3clFbF" id="2tjs8VC2GC4" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC2GRi" role="3clFbG">
            <node concept="1rXfSq" id="2tjs8VC2GC3" role="2Oq$k0">
              <ref role="37wK5l" node="2tjs8VC0VB5" resolve="fromContext" />
            </node>
            <node concept="liA8E" id="2tjs8VC2H8_" role="2OqNvi">
              <ref role="37wK5l" node="2tjs8VC1Yjc" resolve="getValue" />
              <node concept="37vLTw" id="2tjs8VC2ImB" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC2HnC" resolve="token" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2tjs8VC2Csf" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="2tjs8VC2HnC" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC2HnB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC2BCo" role="jymVt" />
    <node concept="2YIFZL" id="2tjs8VC2Blb" role="jymVt">
      <property role="TrG5h" value="getOrPut" />
      <node concept="16syzq" id="2tjs8VC2Blc" role="3clF45">
        <ref role="16sUi3" node="2tjs8VC2Blf" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="2tjs8VC2Bld" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC2Ble" role="3clF47">
        <node concept="3clFbF" id="2tjs8VC2Lat" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC2Lq8" role="3clFbG">
            <node concept="1rXfSq" id="2tjs8VC2Las" role="2Oq$k0">
              <ref role="37wK5l" node="2tjs8VC0VB5" resolve="fromContext" />
            </node>
            <node concept="liA8E" id="2tjs8VC2LFO" role="2OqNvi">
              <ref role="37wK5l" node="2tjs8VC1NkJ" resolve="getOrSetValue" />
              <node concept="37vLTw" id="2tjs8VC2LVT" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC2I_G" resolve="token" />
              </node>
              <node concept="37vLTw" id="2tjs8VC2Msa" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC2J5M" resolve="defaultValue" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2tjs8VC2Blf" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="2tjs8VC2I_G" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC2I_F" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2tjs8VC2J5M" role="3clF46">
        <property role="TrG5h" value="defaultValue" />
        <node concept="3uibUv" id="2tjs8VC2Jol" role="1tU5fm">
          <ref role="3uigEE" to="18ew:~Computable" resolve="Computable" />
          <node concept="16syzq" id="2tjs8VC2JVe" role="11_B2D">
            <ref role="16sUi3" node="2tjs8VC2Blf" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC2$R3" role="jymVt" />
    <node concept="3clFbW" id="2tjs8VC15lz" role="jymVt">
      <node concept="37vLTG" id="2tjs8VC15tB" role="3clF46">
        <property role="TrG5h" value="prev" />
        <node concept="3uibUv" id="2tjs8VC15AC" role="1tU5fm">
          <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
        </node>
      </node>
      <node concept="3cqZAl" id="2tjs8VC15l_" role="3clF45" />
      <node concept="3Tm6S6" id="2tjs8VC2_a2" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC15lB" role="3clF47">
        <node concept="3clFbF" id="2tjs8VC163F" role="3cqZAp">
          <node concept="37vLTI" id="2tjs8VC16qj" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC16xR" role="37vLTx">
              <ref role="3cqZAo" node="2tjs8VC15tB" resolve="prev" />
            </node>
            <node concept="2OqwBi" id="2tjs8VC16au" role="37vLTJ">
              <node concept="Xjq3P" id="2tjs8VC163E" role="2Oq$k0" />
              <node concept="2OwXpG" id="2tjs8VC16if" role="2OqNvi">
                <ref role="2Oxat5" node="2tjs8VC13tT" resolve="prev" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC15dh" role="jymVt" />
    <node concept="3clFb_" id="2tjs8VC0VJ9" role="jymVt">
      <property role="TrG5h" value="setValue" />
      <node concept="37vLTG" id="2tjs8VC0VXg" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC0W1X" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2tjs8VC0W8R" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="2tjs8VC0We0" role="1tU5fm">
          <ref role="16sUi3" node="2tjs8VC0WdA" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="2tjs8VC0VJb" role="3clF45" />
      <node concept="3Tm1VV" id="2tjs8VC0VJc" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC0VJd" role="3clF47">
        <node concept="3clFbF" id="2tjs8VC0Y5E" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC0YbR" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC0Y5D" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC0WHe" resolve="token2value" />
            </node>
            <node concept="liA8E" id="2tjs8VC0Ymq" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="2tjs8VC0Yrk" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC0VXg" resolve="token" />
              </node>
              <node concept="37vLTw" id="2tjs8VC0Y$c" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC0W8R" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2tjs8VC0WdA" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC0K2S" role="jymVt" />
    <node concept="3clFb_" id="2tjs8VC1Yjc" role="jymVt">
      <property role="TrG5h" value="getValue" />
      <node concept="37vLTG" id="2tjs8VC1Yjd" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC1Yje" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="16syzq" id="2tjs8VC1Yjf" role="3clF45">
        <ref role="16sUi3" node="2tjs8VC1YjL" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="2tjs8VC1Yjg" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC1Yjh" role="3clF47">
        <node concept="3cpWs8" id="2tjs8VC26Cx" role="3cqZAp">
          <node concept="3cpWsn" id="2tjs8VC26Cy" role="3cpWs9">
            <property role="TrG5h" value="owner" />
            <node concept="3uibUv" id="2tjs8VC26Cu" role="1tU5fm">
              <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
            </node>
            <node concept="1rXfSq" id="2tjs8VC26Cz" role="33vP2m">
              <ref role="37wK5l" node="2tjs8VC22Ho" resolve="lookupOwner" />
              <node concept="37vLTw" id="2tjs8VC26C$" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC1Yjd" resolve="token" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC26bV" role="3cqZAp">
          <node concept="3K4zz7" id="2tjs8VC27HS" role="3clFbG">
            <node concept="10QFUN" id="2tjs8VC29LP" role="3K4E3e">
              <node concept="2OqwBi" id="2tjs8VC29LJ" role="10QFUP">
                <node concept="2OqwBi" id="2tjs8VC29LK" role="2Oq$k0">
                  <node concept="37vLTw" id="2tjs8VC29LL" role="2Oq$k0">
                    <ref role="3cqZAo" node="2tjs8VC26Cy" resolve="owner" />
                  </node>
                  <node concept="2OwXpG" id="2tjs8VC29LM" role="2OqNvi">
                    <ref role="2Oxat5" node="2tjs8VC0WHe" resolve="token2value" />
                  </node>
                </node>
                <node concept="liA8E" id="2tjs8VC29LN" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                  <node concept="37vLTw" id="2tjs8VC29LO" role="37wK5m">
                    <ref role="3cqZAo" node="2tjs8VC1Yjd" resolve="token" />
                  </node>
                </node>
              </node>
              <node concept="16syzq" id="2tjs8VC2a1r" role="10QFUM">
                <ref role="16sUi3" node="2tjs8VC1YjL" resolve="T" />
              </node>
            </node>
            <node concept="10Nm6u" id="2tjs8VC29yP" role="3K4GZi" />
            <node concept="3y3z36" id="2tjs8VC27ik" role="3K4Cdx">
              <node concept="10Nm6u" id="2tjs8VC27w3" role="3uHU7w" />
              <node concept="37vLTw" id="2tjs8VC26C_" role="3uHU7B">
                <ref role="3cqZAo" node="2tjs8VC26Cy" resolve="owner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2tjs8VC1YjL" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC1Yjb" role="jymVt" />
    <node concept="3clFb_" id="2tjs8VC1NkJ" role="jymVt">
      <property role="TrG5h" value="getOrSetValue" />
      <node concept="37vLTG" id="2tjs8VC1OGQ" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC1OWd" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2tjs8VC1Pmh" role="3clF46">
        <property role="TrG5h" value="defaultValue" />
        <node concept="3uibUv" id="2tjs8VC1QDR" role="1tU5fm">
          <ref role="3uigEE" to="18ew:~Computable" resolve="Computable" />
          <node concept="16syzq" id="2tjs8VC1WlB" role="11_B2D">
            <ref role="16sUi3" node="2tjs8VC1Qh2" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="2tjs8VC2eWo" role="3clF45">
        <ref role="16sUi3" node="2tjs8VC1Qh2" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="2tjs8VC1NkM" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC1NkN" role="3clF47">
        <node concept="3cpWs8" id="2tjs8VC2b9c" role="3cqZAp">
          <node concept="3cpWsn" id="2tjs8VC2b9d" role="3cpWs9">
            <property role="TrG5h" value="owner" />
            <node concept="3uibUv" id="2tjs8VC2b9a" role="1tU5fm">
              <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
            </node>
            <node concept="1rXfSq" id="2tjs8VC2b9e" role="33vP2m">
              <ref role="37wK5l" node="2tjs8VC22Ho" resolve="lookupOwner" />
              <node concept="37vLTw" id="2tjs8VC2b9f" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC1OGQ" resolve="token" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2tjs8VC2bVQ" role="3cqZAp">
          <node concept="3clFbS" id="2tjs8VC2bVS" role="3clFbx">
            <node concept="3cpWs6" id="2tjs8VC2cKC" role="3cqZAp">
              <node concept="10QFUN" id="2tjs8VC2day" role="3cqZAk">
                <node concept="16syzq" id="2tjs8VC2dp6" role="10QFUM">
                  <ref role="16sUi3" node="2tjs8VC1Qh2" resolve="T" />
                </node>
                <node concept="2OqwBi" id="2tjs8VC2dOP" role="10QFUP">
                  <node concept="37vLTw" id="2tjs8VC2dBv" role="2Oq$k0">
                    <ref role="3cqZAo" node="2tjs8VC2b9d" resolve="owner" />
                  </node>
                  <node concept="liA8E" id="2tjs8VC2evJ" role="2OqNvi">
                    <ref role="37wK5l" node="2tjs8VC1Yjc" resolve="getValue" />
                    <node concept="37vLTw" id="2tjs8VC2eIi" role="37wK5m">
                      <ref role="3cqZAo" node="2tjs8VC1OGQ" resolve="token" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2tjs8VC2cmA" role="3clFbw">
            <node concept="10Nm6u" id="2tjs8VC2czs" role="3uHU7w" />
            <node concept="37vLTw" id="2tjs8VC2c8O" role="3uHU7B">
              <ref role="3cqZAo" node="2tjs8VC2b9d" resolve="owner" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2tjs8VC22g$" role="3cqZAp" />
        <node concept="3cpWs8" id="2tjs8VC2iz1" role="3cqZAp">
          <node concept="3cpWsn" id="2tjs8VC2iz2" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="16syzq" id="2tjs8VC2iyR" role="1tU5fm">
              <ref role="16sUi3" node="2tjs8VC1Qh2" resolve="T" />
            </node>
            <node concept="2OqwBi" id="2tjs8VC2iz3" role="33vP2m">
              <node concept="37vLTw" id="2tjs8VC2iz4" role="2Oq$k0">
                <ref role="3cqZAo" node="2tjs8VC1Pmh" resolve="defaultValue" />
              </node>
              <node concept="liA8E" id="2tjs8VC2iz5" role="2OqNvi">
                <ref role="37wK5l" to="18ew:~Computable.compute():java.lang.Object" resolve="compute" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC2gjI" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC2g_h" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC2gjG" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC0WHe" resolve="token2value" />
            </node>
            <node concept="liA8E" id="2tjs8VC2h3S" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="2tjs8VC2hxn" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC1OGQ" resolve="token" />
              </node>
              <node concept="37vLTw" id="2tjs8VC2iz6" role="37wK5m">
                <ref role="3cqZAo" node="2tjs8VC2iz2" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC2jfU" role="3cqZAp">
          <node concept="37vLTw" id="2tjs8VC2jfS" role="3clFbG">
            <ref role="3cqZAo" node="2tjs8VC2iz2" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2tjs8VC1Qh2" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC22rr" role="jymVt" />
    <node concept="3clFb_" id="2tjs8VC22Ho" role="jymVt">
      <property role="TrG5h" value="lookupOwner" />
      <node concept="37vLTG" id="2tjs8VC23ZY" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="2tjs8VC24eE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="2tjs8VC23b8" role="3clF45">
        <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
      </node>
      <node concept="3Tm6S6" id="2tjs8VC22YH" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC22Hs" role="3clF47">
        <node concept="3clFbJ" id="2tjs8VC24Me" role="3cqZAp">
          <node concept="3clFbS" id="2tjs8VC24Mf" role="3clFbx">
            <node concept="3clFbJ" id="2tjs8VC24Mg" role="3cqZAp">
              <node concept="3clFbS" id="2tjs8VC24Mh" role="3clFbx">
                <node concept="3cpWs6" id="2tjs8VC24Mi" role="3cqZAp">
                  <node concept="2OqwBi" id="2tjs8VC24Mj" role="3cqZAk">
                    <node concept="37vLTw" id="2tjs8VC24Mk" role="2Oq$k0">
                      <ref role="3cqZAo" node="2tjs8VC13tT" resolve="prev" />
                    </node>
                    <node concept="liA8E" id="2tjs8VC24Ml" role="2OqNvi">
                      <ref role="37wK5l" node="2tjs8VC22Ho" resolve="lookupOwner" />
                      <node concept="37vLTw" id="2tjs8VC24Mm" role="37wK5m">
                        <ref role="3cqZAo" node="2tjs8VC23ZY" resolve="token" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2tjs8VC24Mn" role="3clFbw">
                <node concept="10Nm6u" id="2tjs8VC24Mo" role="3uHU7w" />
                <node concept="37vLTw" id="2tjs8VC24Mp" role="3uHU7B">
                  <ref role="3cqZAo" node="2tjs8VC13tT" resolve="prev" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2tjs8VC24Mq" role="3cqZAp" />
            <node concept="3cpWs6" id="2tjs8VC24Mr" role="3cqZAp">
              <node concept="10Nm6u" id="2tjs8VC24Ms" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="2tjs8VC24Mt" role="3clFbw">
            <node concept="2OqwBi" id="2tjs8VC24Mu" role="3fr31v">
              <node concept="37vLTw" id="2tjs8VC24Mv" role="2Oq$k0">
                <ref role="3cqZAo" node="2tjs8VC0WHe" resolve="token2value" />
              </node>
              <node concept="liA8E" id="2tjs8VC24Mw" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                <node concept="37vLTw" id="2tjs8VC24Mx" role="37wK5m">
                  <ref role="3cqZAo" node="2tjs8VC23ZY" resolve="token" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tjs8VC25Is" role="3cqZAp">
          <node concept="Xjq3P" id="2tjs8VC25Iq" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC1N51" role="jymVt" />
    <node concept="3clFb_" id="2tjs8VC1kVc" role="jymVt">
      <property role="TrG5h" value="clear" />
      <node concept="3cqZAl" id="2tjs8VC1kVe" role="3clF45" />
      <node concept="3Tm6S6" id="2tjs8VC1lc0" role="1B3o_S" />
      <node concept="3clFbS" id="2tjs8VC1kVg" role="3clF47">
        <node concept="3clFbF" id="2tjs8VC1lEc" role="3cqZAp">
          <node concept="2OqwBi" id="2tjs8VC1lS_" role="3clFbG">
            <node concept="37vLTw" id="2tjs8VC1lEb" role="2Oq$k0">
              <ref role="3cqZAo" node="2tjs8VC0WHe" resolve="token2value" />
            </node>
            <node concept="liA8E" id="2tjs8VC1mbI" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.clear():void" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC1mof" role="jymVt" />
    <node concept="Wx3nA" id="2tjs8VC16TI" role="jymVt">
      <property role="TrG5h" value="current" />
      <node concept="3Tm6S6" id="2tjs8VC16TK" role="1B3o_S" />
      <node concept="3uibUv" id="2tjs8VC172F" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
        <node concept="3uibUv" id="2tjs8VC17gT" role="11_B2D">
          <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
        </node>
      </node>
      <node concept="10Nm6u" id="2k2r9bMc0Fx" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="2tjs8VC19BF" role="jymVt" />
    <node concept="312cEg" id="2tjs8VC0WHe" role="jymVt">
      <property role="TrG5h" value="token2value" />
      <node concept="3Tm6S6" id="2tjs8VC0WHf" role="1B3o_S" />
      <node concept="3uibUv" id="2tjs8VC0WI8" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="2tjs8VC0WIJ" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3uibUv" id="2tjs8VC0WJb" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="2tjs8VC0WLW" role="33vP2m">
        <node concept="1pGfFk" id="2tjs8VC0XV5" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="2tjs8VC0XZd" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="3uibUv" id="2tjs8VC0Y1s" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC0WGi" role="jymVt" />
    <node concept="312cEg" id="2tjs8VC13tT" role="jymVt">
      <property role="TrG5h" value="prev" />
      <node concept="3Tm6S6" id="2tjs8VC13tU" role="1B3o_S" />
      <node concept="3uibUv" id="2tjs8VC13_k" role="1tU5fm">
        <ref role="3uigEE" node="2tjs8VC0K0m" resolve="Memoizer" />
      </node>
    </node>
    <node concept="2tJIrI" id="2tjs8VC13mA" role="jymVt" />
    <node concept="3Tm1VV" id="2tjs8VC0K0n" role="1B3o_S" />
  </node>
</model>

