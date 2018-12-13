<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:edd793b1-5d54-477c-b734-287412ef4ebc(typechecking.samples.baseLanguage.features@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="2" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="96nh" ref="r:0a51f978-f7e7-4ce4-89ac-69fc1d6b1a8d(typechecking.samples.baseLanguage.features)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.typechecking.service)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="6339244025081158986" name="needsNoWriteAction" index="3OwPAg" />
        <child id="1216993439383" name="methods" index="1qtyYc" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="4733039728785194814" name="jetbrains.mps.lang.modelapi.structure.NamedNodeReference" flags="ng" index="ZC_QK">
        <reference id="7256306938026143658" name="target" index="2aWVGs" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="7400021826774799413" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="ng" index="2tJFMh">
        <child id="7400021826774799510" name="ref" index="2tJFKM" />
      </concept>
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="3648723375513868532" name="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" flags="ng" index="Vyspw" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2XOHcx" id="1N_0WA5DT60">
    <property role="2XOHcw" value="${mpscore_home}" />
  </node>
  <node concept="1lH9Xt" id="5s5QomKHHly">
    <property role="3OwPAg" value="true" />
    <property role="TrG5h" value="Features" />
    <node concept="2XrIbr" id="35YJGAJTxCf" role="1qtyYc">
      <property role="TrG5h" value="resolve" />
      <node concept="37vLTG" id="35YJGAJTxCF" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="2sp9CU" id="35YJGAJTxCR" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="35YJGAJTxCp" role="3clF45">
        <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
      </node>
      <node concept="3clFbS" id="35YJGAJTxCh" role="3clF47">
        <node concept="3cpWs8" id="35YJGAJT$34" role="3cqZAp">
          <node concept="3cpWsn" id="35YJGAJT$35" role="3cpWs9">
            <property role="TrG5h" value="cls" />
            <node concept="3Tqbb2" id="35YJGAJT$2Z" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="35YJGAJTxLm" role="3cqZAp">
          <node concept="1QHqEC" id="35YJGAJTxLn" role="1QHqEI">
            <node concept="3clFbS" id="35YJGAJTxLo" role="1bW5cS">
              <node concept="3clFbF" id="35YJGAJT$eE" role="3cqZAp">
                <node concept="37vLTI" id="35YJGAJT$eG" role="3clFbG">
                  <node concept="1PxgMI" id="35YJGAJT$36" role="37vLTx">
                    <node concept="chp4Y" id="35YJGAJT$37" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:g7pOWCK" resolve="Classifier" />
                    </node>
                    <node concept="2OqwBi" id="35YJGAJT$38" role="1m5AlR">
                      <node concept="37vLTw" id="35YJGAJT$39" role="2Oq$k0">
                        <ref role="3cqZAo" node="35YJGAJTxCF" resolve="ref" />
                      </node>
                      <node concept="Vyspw" id="35YJGAJT$3a" role="2OqNvi">
                        <node concept="2OqwBi" id="35YJGAJT$3b" role="Vysub">
                          <node concept="1jxXqW" id="35YJGAJT$3c" role="2Oq$k0" />
                          <node concept="liA8E" id="35YJGAJT$3d" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="35YJGAJT$eK" role="37vLTJ">
                    <ref role="3cqZAo" node="35YJGAJT$35" resolve="cls" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="35YJGAJTxW6" role="ukAjM">
            <node concept="1jxXqW" id="35YJGAJTxLs" role="2Oq$k0" />
            <node concept="liA8E" id="35YJGAJTy_W" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="35YJGAJTyJo" role="3cqZAp">
          <node concept="37vLTw" id="35YJGAJT$3e" role="3clFbG">
            <ref role="3cqZAo" node="35YJGAJT$35" resolve="cls" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="35YJGAJTxCl" role="1B3o_S" />
    </node>
    <node concept="1LZb2c" id="5s5QomKHHK1" role="1SL9yI">
      <property role="TrG5h" value="intByteConversion" />
      <node concept="3cqZAl" id="5s5QomKHHK2" role="3clF45" />
      <node concept="3clFbS" id="5s5QomKHHK6" role="3clF47">
        <node concept="2Hmddi" id="4BHjwwGPNaW" role="3cqZAp">
          <node concept="2YIFZM" id="4BHjwwGPNe3" role="2Hmdds">
            <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TestLaunchTypechecking" />
            <ref role="37wK5l" to="tj24:7smgEqg8sZP" resolve="checkTypes" />
            <node concept="2OqwBi" id="35YJGAJT$tF" role="37wK5m">
              <node concept="2WthIp" id="35YJGAJT$tI" role="2Oq$k0" />
              <node concept="2XshWL" id="35YJGAJT$tK" role="2OqNvi">
                <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                <node concept="2tJFMh" id="35YJGAJT$tQ" role="2XxRq1">
                  <node concept="ZC_QK" id="35YJGAJT$tR" role="2tJFKM">
                    <ref role="2aWVGs" to="96nh:5s5QomKHFub" resolve="IntByteConversion" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1jxXqW" id="4BHjwwGPNe5" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2HYHa0WIt6Z" role="1SL9yI">
      <property role="TrG5h" value="charConversion" />
      <node concept="3cqZAl" id="2HYHa0WIt70" role="3clF45" />
      <node concept="3clFbS" id="2HYHa0WIt71" role="3clF47">
        <node concept="2Hmddi" id="2HYHa0WIt72" role="3cqZAp">
          <node concept="2YIFZM" id="2HYHa0WIt73" role="2Hmdds">
            <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TestLaunchTypechecking" />
            <ref role="37wK5l" to="tj24:7smgEqg8sZP" resolve="checkTypes" />
            <node concept="2OqwBi" id="2HYHa0WIt74" role="37wK5m">
              <node concept="2WthIp" id="2HYHa0WIt75" role="2Oq$k0" />
              <node concept="2XshWL" id="2HYHa0WIt76" role="2OqNvi">
                <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                <node concept="2tJFMh" id="2HYHa0WIt77" role="2XxRq1">
                  <node concept="ZC_QK" id="2HYHa0WIt7D" role="2tJFKM">
                    <ref role="2aWVGs" to="96nh:3Cu2imBSO5x" resolve="CharConversion" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1jxXqW" id="2HYHa0WIt79" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EY0p2ym72p" role="1SL9yI">
      <property role="TrG5h" value="shortConversion" />
      <node concept="3cqZAl" id="6EY0p2ym72q" role="3clF45" />
      <node concept="3clFbS" id="6EY0p2ym72r" role="3clF47">
        <node concept="2Hmddi" id="6EY0p2ym72s" role="3cqZAp">
          <node concept="2YIFZM" id="6EY0p2ym72t" role="2Hmdds">
            <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TestLaunchTypechecking" />
            <ref role="37wK5l" to="tj24:7smgEqg8sZP" resolve="checkTypes" />
            <node concept="2OqwBi" id="6EY0p2ym72u" role="37wK5m">
              <node concept="2WthIp" id="6EY0p2ym72v" role="2Oq$k0" />
              <node concept="2XshWL" id="6EY0p2ym72w" role="2OqNvi">
                <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                <node concept="2tJFMh" id="6EY0p2ym72x" role="2XxRq1">
                  <node concept="ZC_QK" id="6EY0p2ym73r" role="2tJFKM">
                    <ref role="2aWVGs" to="96nh:6EY0p2ylujy" resolve="IntShortConversion" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1jxXqW" id="6EY0p2ym72z" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="5moyjRHyVvd" role="1SL9yI">
      <property role="TrG5h" value="genericNewExpression" />
      <node concept="3cqZAl" id="5moyjRHyVve" role="3clF45" />
      <node concept="3clFbS" id="5moyjRHyVvf" role="3clF47">
        <node concept="2Hmddi" id="5moyjRHyVvg" role="3cqZAp">
          <node concept="2YIFZM" id="5moyjRHyVvh" role="2Hmdds">
            <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TestLaunchTypechecking" />
            <ref role="37wK5l" to="tj24:7smgEqg8sZP" resolve="checkTypes" />
            <node concept="2OqwBi" id="5moyjRHyVvi" role="37wK5m">
              <node concept="2WthIp" id="5moyjRHyVvj" role="2Oq$k0" />
              <node concept="2XshWL" id="5moyjRHyVvk" role="2OqNvi">
                <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                <node concept="2tJFMh" id="5moyjRHyVvl" role="2XxRq1">
                  <node concept="ZC_QK" id="5moyjRHz1DP" role="2tJFKM">
                    <ref role="2aWVGs" to="96nh:2HYHa0WUDvm" resolve="GenericNewExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1jxXqW" id="5moyjRHyVvn" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EY0p2x_00j" role="1SL9yI">
      <property role="TrG5h" value="instanceMethod" />
      <node concept="3cqZAl" id="6EY0p2x_00k" role="3clF45" />
      <node concept="3clFbS" id="6EY0p2x_00l" role="3clF47">
        <node concept="2Hmddi" id="6EY0p2x_00m" role="3cqZAp">
          <node concept="2YIFZM" id="6EY0p2x_00n" role="2Hmdds">
            <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TestLaunchTypechecking" />
            <ref role="37wK5l" to="tj24:7smgEqg8sZP" resolve="checkTypes" />
            <node concept="2OqwBi" id="6EY0p2x_00o" role="37wK5m">
              <node concept="2WthIp" id="6EY0p2x_00p" role="2Oq$k0" />
              <node concept="2XshWL" id="6EY0p2x_00q" role="2OqNvi">
                <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                <node concept="2tJFMh" id="6EY0p2x_00r" role="2XxRq1">
                  <node concept="ZC_QK" id="6EY0p2x_01j" role="2tJFKM">
                    <ref role="2aWVGs" to="96nh:6EY0p2wAiyu" resolve="InstanceMethod" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1jxXqW" id="6EY0p2x_00t" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6EY0p2yyMKo" role="1SL9yI">
      <property role="TrG5h" value="staticMethod" />
      <node concept="3cqZAl" id="6EY0p2yyMKp" role="3clF45" />
      <node concept="3clFbS" id="6EY0p2yyMKq" role="3clF47">
        <node concept="2Hmddi" id="6EY0p2yyMKr" role="3cqZAp">
          <node concept="2YIFZM" id="6EY0p2yyMKs" role="2Hmdds">
            <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TestLaunchTypechecking" />
            <ref role="37wK5l" to="tj24:7smgEqg8sZP" resolve="checkTypes" />
            <node concept="2OqwBi" id="6EY0p2yyMKt" role="37wK5m">
              <node concept="2WthIp" id="6EY0p2yyMKu" role="2Oq$k0" />
              <node concept="2XshWL" id="6EY0p2yyMKv" role="2OqNvi">
                <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                <node concept="2tJFMh" id="6EY0p2yyMKw" role="2XxRq1">
                  <node concept="ZC_QK" id="6EY0p2yyMLI" role="2tJFKM">
                    <ref role="2aWVGs" to="96nh:6EY0p2ymmj_" resolve="StaticMethod" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1jxXqW" id="6EY0p2yyMKy" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="7AyqXCdNg6Z" role="1SL9yI">
      <property role="TrG5h" value="primitiveTypes" />
      <node concept="3cqZAl" id="7AyqXCdNg70" role="3clF45" />
      <node concept="3clFbS" id="7AyqXCdNg71" role="3clF47">
        <node concept="2Hmddi" id="7AyqXCdNg72" role="3cqZAp">
          <node concept="2YIFZM" id="7AyqXCdNg73" role="2Hmdds">
            <ref role="1Pybhc" to="tj24:1N_0WA5JxZO" resolve="TestLaunchTypechecking" />
            <ref role="37wK5l" to="tj24:7smgEqg8sZP" resolve="checkTypes" />
            <node concept="2OqwBi" id="7AyqXCdNg74" role="37wK5m">
              <node concept="2WthIp" id="7AyqXCdNg75" role="2Oq$k0" />
              <node concept="2XshWL" id="7AyqXCdNg76" role="2OqNvi">
                <ref role="2WH_rO" node="35YJGAJTxCf" resolve="resolve" />
                <node concept="2tJFMh" id="7AyqXCdNg77" role="2XxRq1">
                  <node concept="ZC_QK" id="7AyqXCdNg8n" role="2tJFKM">
                    <ref role="2aWVGs" to="96nh:5XJPBczwaPg" resolve="PrimitiveTypes" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1jxXqW" id="7AyqXCdNg79" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>
