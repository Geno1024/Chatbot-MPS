<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7f38d87f-f224-43c3-97f8-6944323ada47(com.geno1024.chatbotlang.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="18" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tce9" ref="r:e7a593e3-4a2f-4676-8ccc-c5b95b97fe2d(com.geno1024.chatbotlang.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
  </registry>
  <node concept="13h7C7" id="4if8LWOsN3Q">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.firstclass" />
    <ref role="13h7C2" to="tce9:3pD1eW3MCPG" resolve="Reply" />
    <node concept="13hLZK" id="4if8LWOsN3R" role="13h7CW">
      <node concept="3clFbS" id="4if8LWOsN3S" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4if8LWOsN41" role="13h7CS">
      <property role="TrG5h" value="toString" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="4if8LWOsN42" role="1B3o_S" />
      <node concept="17QB3L" id="4if8LWOsN4_" role="3clF45" />
      <node concept="3clFbS" id="4if8LWOsN44" role="3clF47" />
    </node>
  </node>
  <node concept="13h7C7" id="4if8LWOsN5w">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.replykind" />
    <ref role="13h7C2" to="tce9:3pD1eW3O2v6" resolve="ReplyStatic" />
    <node concept="13hLZK" id="4if8LWOsN5x" role="13h7CW">
      <node concept="3clFbS" id="4if8LWOsN5y" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4if8LWOsN5F" role="13h7CS">
      <property role="TrG5h" value="toString" />
      <ref role="13i0hy" node="4if8LWOsN41" resolve="toString" />
      <node concept="3Tm1VV" id="4if8LWOsN5G" role="1B3o_S" />
      <node concept="3clFbS" id="4if8LWOsN5J" role="3clF47">
        <node concept="3clFbF" id="4if8LWOsN5M" role="3cqZAp">
          <node concept="3cpWs3" id="4if8LWOsNuN" role="3clFbG">
            <node concept="2OqwBi" id="4if8LWOsNG5" role="3uHU7w">
              <node concept="13iPFW" id="4if8LWOsNvb" role="2Oq$k0" />
              <node concept="3TrcHB" id="4if8LWOsNQ8" role="2OqNvi">
                <ref role="3TsBF5" to="tce9:3pD1eW3O2v7" resolve="reply" />
              </node>
            </node>
            <node concept="Xl_RD" id="4if8LWOsNa_" role="3uHU7B">
              <property role="Xl_RC" value="static reply: " />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4if8LWOsN5K" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4if8LWOsO1a">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.replykind" />
    <ref role="13h7C2" to="tce9:3pD1eW3O2vb" resolve="ReplyInputAware" />
    <node concept="13hLZK" id="4if8LWOsO1b" role="13h7CW">
      <node concept="3clFbS" id="4if8LWOsO1c" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4if8LWOsO1l" role="13h7CS">
      <property role="TrG5h" value="toString" />
      <ref role="13i0hy" node="4if8LWOsN41" resolve="toString" />
      <node concept="3Tm1VV" id="4if8LWOsO1m" role="1B3o_S" />
      <node concept="3clFbS" id="4if8LWOsO1p" role="3clF47">
        <node concept="3clFbF" id="4if8LWOsO1s" role="3cqZAp">
          <node concept="Xl_RD" id="4if8LWOsO1r" role="3clFbG">
            <property role="Xl_RC" value="input aware reply: " />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4if8LWOsO1q" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4if8LWOsOaR">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.replykind" />
    <ref role="13h7C2" to="tce9:3pD1eW3O2ve" resolve="ReplyExternal" />
    <node concept="13hLZK" id="4if8LWOsOaS" role="13h7CW">
      <node concept="3clFbS" id="4if8LWOsOaT" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4if8LWOsOb2" role="13h7CS">
      <property role="TrG5h" value="toString" />
      <ref role="13i0hy" node="4if8LWOsN41" resolve="toString" />
      <node concept="3Tm1VV" id="4if8LWOsOb3" role="1B3o_S" />
      <node concept="3clFbS" id="4if8LWOsOb6" role="3clF47">
        <node concept="3clFbF" id="4if8LWOsOb9" role="3cqZAp">
          <node concept="Xl_RD" id="4if8LWOsOb8" role="3clFbG">
            <property role="Xl_RC" value="external reply: " />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4if8LWOsOb7" role="3clF45" />
    </node>
  </node>
</model>

