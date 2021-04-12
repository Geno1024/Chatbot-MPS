<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f302cdac-9c51-4560-a64f-4f9c93609070(com.geno1024.chatbotlang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tce9" ref="r:e7a593e3-4a2f-4676-8ccc-c5b95b97fe2d(com.geno1024.chatbotlang.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1160590307797" name="usesFolding" index="S$F3r" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="6046489571270834038" name="foldedCellModel" index="3EmGlc" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="24kQdi" id="3pD1eW3M4xt">
    <property role="3GE5qa" value="com.geno1024.chatbotlang" />
    <ref role="1XX52x" to="tce9:3pD1eW3M4xe" resolve="RobotConfig" />
    <node concept="3EZMnI" id="3pD1eW3M4xv" role="2wV5jI">
      <node concept="3EZMnI" id="3pD1eW3M4xA" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3M4xC" role="3F10Kt" />
        <node concept="3F0ifn" id="3pD1eW3M4xK" role="3EZMnx">
          <property role="3F0ifm" value="RobotConfig for" />
        </node>
        <node concept="3F0A7n" id="3pD1eW3M4xQ" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="3pD1eW3M4xF" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3pD1eW3NwlV" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3NwlX" role="3F10Kt" />
        <node concept="3XFhqQ" id="3pD1eW3Nw$o" role="3EZMnx" />
        <node concept="3F1sOY" id="3pD1eW3Nw$u" role="3EZMnx">
          <ref role="1NtTu8" to="tce9:3pD1eW3M4xk" resolve="logins" />
        </node>
        <node concept="2iRfu4" id="3pD1eW3Nwm0" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3pD1eW3MDLe" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3MDLg" role="3F10Kt" />
        <node concept="3XFhqQ" id="3pD1eW3MDP6" role="3EZMnx" />
        <node concept="3F1sOY" id="3pD1eW3NGrN" role="3EZMnx">
          <ref role="1NtTu8" to="tce9:3pD1eW3MCPP" resolve="onBoot" />
        </node>
        <node concept="2iRfu4" id="3pD1eW3MDLj" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3pD1eW3MKcP" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3MKcR" role="3F10Kt" />
        <node concept="3XFhqQ" id="3pD1eW3ML5k" role="3EZMnx" />
        <node concept="3F1sOY" id="3pD1eW3NGrU" role="3EZMnx">
          <ref role="1NtTu8" to="tce9:3pD1eW3MCPU" resolve="onReceive" />
        </node>
        <node concept="2iRfu4" id="3pD1eW3MKcU" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3pD1eW3Nk7U" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3Nk7W" role="3F10Kt" />
        <node concept="3XFhqQ" id="3pD1eW3Nko3" role="3EZMnx" />
        <node concept="3F1sOY" id="3pD1eW3NGs1" role="3EZMnx">
          <ref role="1NtTu8" to="tce9:3pD1eW3Ni_D" resolve="onSchedule" />
        </node>
        <node concept="2iRfu4" id="3pD1eW3Nk7Z" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3pD1eW3N9qK" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3N9qM" role="3F10Kt" />
        <node concept="3XFhqQ" id="3pD1eW3N9Bv" role="3EZMnx" />
        <node concept="3F1sOY" id="3pD1eW3NGs8" role="3EZMnx">
          <ref role="1NtTu8" to="tce9:3pD1eW3MCPK" resolve="replyPool" />
        </node>
        <node concept="2iRfu4" id="3pD1eW3N9qP" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3pD1eW3M4xy" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3pD1eW3No4z">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <ref role="1XX52x" to="tce9:3pD1eW3NmUM" resolve="LoginList" />
    <node concept="3EZMnI" id="3pD1eW3M4zG" role="2wV5jI">
      <node concept="VPM3Z" id="3pD1eW3M4zI" role="3F10Kt" />
      <node concept="3F0ifn" id="3pD1eW3NmRh" role="3EZMnx">
        <property role="3F0ifm" value="Logins:" />
      </node>
      <node concept="3EZMnI" id="3pD1eW3MbyB" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3MbyD" role="3F10Kt" />
        <node concept="3XFhqQ" id="3pD1eW3Mb$w" role="3EZMnx" />
        <node concept="3F2HdR" id="3pD1eW3Mb$A" role="3EZMnx">
          <property role="S$F3r" value="true" />
          <ref role="1NtTu8" to="tce9:3pD1eW3NoXb" resolve="logins" />
          <node concept="2EHx9g" id="3pD1eW3Mb$G" role="2czzBx" />
          <node concept="1HlG4h" id="3pD1eW3Mb$P" role="3EmGlc">
            <node concept="1HfYo3" id="3pD1eW3Mb$Q" role="1HlULh">
              <node concept="3TQlhw" id="3pD1eW3Mb$R" role="1Hhtcw">
                <node concept="3clFbS" id="3pD1eW3Mb$S" role="2VODD2">
                  <node concept="3clFbF" id="3pD1eW3MbDu" role="3cqZAp">
                    <node concept="3cpWs3" id="3pD1eW3N8bK" role="3clFbG">
                      <node concept="3cpWs3" id="3pD1eW3Mjxx" role="3uHU7B">
                        <node concept="2OqwBi" id="3pD1eW3Mdrq" role="3uHU7B">
                          <node concept="2OqwBi" id="3pD1eW3MbPK" role="2Oq$k0">
                            <node concept="pncrf" id="3pD1eW3MbDt" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="3pD1eW3Nrr6" role="2OqNvi">
                              <ref role="3TtcxE" to="tce9:3pD1eW3NoXb" resolve="logins" />
                            </node>
                          </node>
                          <node concept="34oBXx" id="3pD1eW3MftP" role="2OqNvi" />
                        </node>
                        <node concept="Xl_RD" id="3pD1eW3Mjx_" role="3uHU7w">
                          <property role="Xl_RC" value=" login" />
                        </node>
                      </node>
                      <node concept="1eOMI4" id="3pD1eW3N8c5" role="3uHU7w">
                        <node concept="3K4zz7" id="3pD1eW3N8c6" role="1eOMHV">
                          <node concept="Xl_RD" id="3pD1eW3N8c7" role="3K4E3e">
                            <property role="Xl_RC" value="." />
                          </node>
                          <node concept="Xl_RD" id="3pD1eW3N8c8" role="3K4GZi">
                            <property role="Xl_RC" value="s." />
                          </node>
                          <node concept="3clFbC" id="3pD1eW3N8c9" role="3K4Cdx">
                            <node concept="3cmrfG" id="3pD1eW3N8ca" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="2OqwBi" id="3pD1eW3N8cb" role="3uHU7B">
                              <node concept="2OqwBi" id="3pD1eW3N8cc" role="2Oq$k0">
                                <node concept="pncrf" id="3pD1eW3N8cd" role="2Oq$k0" />
                                <node concept="3Tsc0h" id="3pD1eW3NsnU" role="2OqNvi">
                                  <ref role="3TtcxE" to="tce9:3pD1eW3NoXb" resolve="logins" />
                                </node>
                              </node>
                              <node concept="34oBXx" id="3pD1eW3N8cf" role="2OqNvi" />
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
        <node concept="2iRfu4" id="3pD1eW3MbyG" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3pD1eW3M4zL" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3pD1eW3Nw$N">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <ref role="1XX52x" to="tce9:3pD1eW3NmUN" resolve="OnBootList" />
    <node concept="3EZMnI" id="3pD1eW3MDPc" role="2wV5jI">
      <node concept="VPM3Z" id="3pD1eW3MDPe" role="3F10Kt" />
      <node concept="3F0ifn" id="3pD1eW3MDPn" role="3EZMnx">
        <property role="3F0ifm" value="OnBoot:" />
      </node>
      <node concept="3EZMnI" id="3pD1eW3MDPF" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3MDPH" role="3F10Kt" />
        <node concept="3XFhqQ" id="3pD1eW3MDPQ" role="3EZMnx" />
        <node concept="3F2HdR" id="3pD1eW3MDPW" role="3EZMnx">
          <property role="S$F3r" value="true" />
          <ref role="1NtTu8" to="tce9:3pD1eW3Nw$E" resolve="onBoot" />
          <node concept="2EHx9g" id="3pD1eW3MDQ2" role="2czzBx" />
          <node concept="1HlG4h" id="3pD1eW3ML5C" role="3EmGlc">
            <node concept="1HfYo3" id="3pD1eW3ML5D" role="1HlULh">
              <node concept="3TQlhw" id="3pD1eW3ML5E" role="1Hhtcw">
                <node concept="3clFbS" id="3pD1eW3ML5F" role="2VODD2">
                  <node concept="3clFbF" id="3pD1eW3ML66" role="3cqZAp">
                    <node concept="3cpWs3" id="3pD1eW3MWDl" role="3clFbG">
                      <node concept="3cpWs3" id="3pD1eW3MQ9x" role="3uHU7B">
                        <node concept="2OqwBi" id="3pD1eW3MMS2" role="3uHU7B">
                          <node concept="2OqwBi" id="3pD1eW3MLio" role="2Oq$k0">
                            <node concept="pncrf" id="3pD1eW3ML65" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="3pD1eW3MLy0" role="2OqNvi">
                              <ref role="3TtcxE" to="tce9:3pD1eW3Nw$E" resolve="onBoot" />
                            </node>
                          </node>
                          <node concept="34oBXx" id="3pD1eW3MOSl" role="2OqNvi" />
                        </node>
                        <node concept="Xl_RD" id="3pD1eW3MQ9_" role="3uHU7w">
                          <property role="Xl_RC" value=" on boot" />
                        </node>
                      </node>
                      <node concept="1eOMI4" id="3pD1eW3N4uW" role="3uHU7w">
                        <node concept="3K4zz7" id="3pD1eW3MWFb" role="1eOMHV">
                          <node concept="Xl_RD" id="3pD1eW3N3La" role="3K4E3e">
                            <property role="Xl_RC" value="." />
                          </node>
                          <node concept="Xl_RD" id="3pD1eW3N3Mw" role="3K4GZi">
                            <property role="Xl_RC" value="s." />
                          </node>
                          <node concept="3clFbC" id="3pD1eW3N2wF" role="3K4Cdx">
                            <node concept="3cmrfG" id="3pD1eW3N2XF" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="2OqwBi" id="3pD1eW3MZnj" role="3uHU7B">
                              <node concept="2OqwBi" id="3pD1eW3MXyP" role="2Oq$k0">
                                <node concept="pncrf" id="3pD1eW3MX3B" role="2Oq$k0" />
                                <node concept="3Tsc0h" id="3pD1eW3MXJm" role="2OqNvi">
                                  <ref role="3TtcxE" to="tce9:3pD1eW3Nw$E" resolve="onBoot" />
                                </node>
                              </node>
                              <node concept="34oBXx" id="3pD1eW3N1p0" role="2OqNvi" />
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
        <node concept="2iRfu4" id="3pD1eW3MDPK" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3pD1eW3MDPh" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3pD1eW3Nz8G">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <ref role="1XX52x" to="tce9:3pD1eW3NmUO" resolve="OnReceiveList" />
    <node concept="3EZMnI" id="3pD1eW3ML5q" role="2wV5jI">
      <node concept="VPM3Z" id="3pD1eW3ML5s" role="3F10Kt" />
      <node concept="3F0ifn" id="3pD1eW3ML5_" role="3EZMnx">
        <property role="3F0ifm" value="OnReceive:" />
      </node>
      <node concept="3EZMnI" id="3pD1eW3MQHC" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3MQHE" role="3F10Kt" />
        <node concept="3XFhqQ" id="3pD1eW3MQHN" role="3EZMnx" />
        <node concept="3F2HdR" id="3pD1eW3MQHT" role="3EZMnx">
          <property role="S$F3r" value="true" />
          <ref role="1NtTu8" to="tce9:3pD1eW3NxLr" resolve="onReceive" />
          <node concept="2EHx9g" id="3pD1eW3MQHZ" role="2czzBx" />
          <node concept="1HlG4h" id="3pD1eW3MQI2" role="3EmGlc">
            <node concept="1HfYo3" id="3pD1eW3MQI3" role="1HlULh">
              <node concept="3TQlhw" id="3pD1eW3MQI4" role="1Hhtcw">
                <node concept="3clFbS" id="3pD1eW3MQI5" role="2VODD2">
                  <node concept="3clFbF" id="3pD1eW3MQMF" role="3cqZAp">
                    <node concept="3cpWs3" id="3pD1eW3N6xP" role="3clFbG">
                      <node concept="3cpWs3" id="3pD1eW3MVDr" role="3uHU7B">
                        <node concept="2OqwBi" id="3pD1eW3MSwq" role="3uHU7B">
                          <node concept="2OqwBi" id="3pD1eW3MQYX" role="2Oq$k0">
                            <node concept="pncrf" id="3pD1eW3MQME" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="3pD1eW3MRao" role="2OqNvi">
                              <ref role="3TtcxE" to="tce9:3pD1eW3NxLr" resolve="onReceive" />
                            </node>
                          </node>
                          <node concept="34oBXx" id="3pD1eW3MUyP" role="2OqNvi" />
                        </node>
                        <node concept="Xl_RD" id="3pD1eW3MVDv" role="3uHU7w">
                          <property role="Xl_RC" value=" on receive" />
                        </node>
                      </node>
                      <node concept="1eOMI4" id="3pD1eW3N6zF" role="3uHU7w">
                        <node concept="3K4zz7" id="3pD1eW3N6zG" role="1eOMHV">
                          <node concept="Xl_RD" id="3pD1eW3N6zH" role="3K4E3e">
                            <property role="Xl_RC" value="." />
                          </node>
                          <node concept="Xl_RD" id="3pD1eW3N6zI" role="3K4GZi">
                            <property role="Xl_RC" value="s." />
                          </node>
                          <node concept="3clFbC" id="3pD1eW3N6zJ" role="3K4Cdx">
                            <node concept="3cmrfG" id="3pD1eW3N6zK" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="2OqwBi" id="3pD1eW3N6zL" role="3uHU7B">
                              <node concept="2OqwBi" id="3pD1eW3N6zM" role="2Oq$k0">
                                <node concept="pncrf" id="3pD1eW3N6zN" role="2Oq$k0" />
                                <node concept="3Tsc0h" id="3pD1eW3NzHH" role="2OqNvi">
                                  <ref role="3TtcxE" to="tce9:3pD1eW3NxLr" resolve="onReceive" />
                                </node>
                              </node>
                              <node concept="34oBXx" id="3pD1eW3N6zP" role="2OqNvi" />
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
        <node concept="2iRfu4" id="3pD1eW3MQHH" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3pD1eW3ML5v" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3pD1eW3N$Dz">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <ref role="1XX52x" to="tce9:3pD1eW3NmUP" resolve="OnScheduleList" />
    <node concept="3EZMnI" id="3pD1eW3Nko9" role="2wV5jI">
      <node concept="VPM3Z" id="3pD1eW3Nkob" role="3F10Kt" />
      <node concept="3F0ifn" id="3pD1eW3Nkok" role="3EZMnx">
        <property role="3F0ifm" value="OnSchedule:" />
      </node>
      <node concept="3EZMnI" id="3pD1eW3Nkoq" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3Nkor" role="3F10Kt" />
        <node concept="3XFhqQ" id="3pD1eW3Nkos" role="3EZMnx" />
        <node concept="3F2HdR" id="3pD1eW3Nkot" role="3EZMnx">
          <property role="S$F3r" value="true" />
          <ref role="1NtTu8" to="tce9:3pD1eW3NxLt" resolve="onSchedule" />
          <node concept="2EHx9g" id="3pD1eW3Nkou" role="2czzBx" />
          <node concept="1HlG4h" id="3pD1eW3Nkov" role="3EmGlc">
            <node concept="1HfYo3" id="3pD1eW3Nkow" role="1HlULh">
              <node concept="3TQlhw" id="3pD1eW3Nkox" role="1Hhtcw">
                <node concept="3clFbS" id="3pD1eW3Nkoy" role="2VODD2">
                  <node concept="3clFbF" id="3pD1eW3Nkoz" role="3cqZAp">
                    <node concept="3cpWs3" id="3pD1eW3Nko$" role="3clFbG">
                      <node concept="3cpWs3" id="3pD1eW3Nko_" role="3uHU7B">
                        <node concept="2OqwBi" id="3pD1eW3NkoA" role="3uHU7B">
                          <node concept="2OqwBi" id="3pD1eW3NkoB" role="2Oq$k0">
                            <node concept="pncrf" id="3pD1eW3NkoC" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="3pD1eW3NlN$" role="2OqNvi">
                              <ref role="3TtcxE" to="tce9:3pD1eW3NxLt" resolve="onSchedule" />
                            </node>
                          </node>
                          <node concept="34oBXx" id="3pD1eW3NkoE" role="2OqNvi" />
                        </node>
                        <node concept="Xl_RD" id="3pD1eW3NkoF" role="3uHU7w">
                          <property role="Xl_RC" value=" on schedule" />
                        </node>
                      </node>
                      <node concept="1eOMI4" id="3pD1eW3NkoG" role="3uHU7w">
                        <node concept="3K4zz7" id="3pD1eW3NkoH" role="1eOMHV">
                          <node concept="Xl_RD" id="3pD1eW3NkoI" role="3K4E3e">
                            <property role="Xl_RC" value="." />
                          </node>
                          <node concept="Xl_RD" id="3pD1eW3NkoJ" role="3K4GZi">
                            <property role="Xl_RC" value="s." />
                          </node>
                          <node concept="3clFbC" id="3pD1eW3NkoK" role="3K4Cdx">
                            <node concept="3cmrfG" id="3pD1eW3NkoL" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="2OqwBi" id="3pD1eW3NkoM" role="3uHU7B">
                              <node concept="2OqwBi" id="3pD1eW3NkoN" role="2Oq$k0">
                                <node concept="pncrf" id="3pD1eW3NkoO" role="2Oq$k0" />
                                <node concept="3Tsc0h" id="3pD1eW3N_gg" role="2OqNvi">
                                  <ref role="3TtcxE" to="tce9:3pD1eW3NxLt" resolve="onSchedule" />
                                </node>
                              </node>
                              <node concept="34oBXx" id="3pD1eW3NkoQ" role="2OqNvi" />
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
        <node concept="2iRfu4" id="3pD1eW3NkoR" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3pD1eW3Nkoe" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3pD1eW3NA4e">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <ref role="1XX52x" to="tce9:3pD1eW3NmUQ" resolve="ReplyList" />
    <node concept="3EZMnI" id="3pD1eW3N9B_" role="2wV5jI">
      <node concept="VPM3Z" id="3pD1eW3N9BB" role="3F10Kt" />
      <node concept="3F0ifn" id="3pD1eW3N9BK" role="3EZMnx">
        <property role="3F0ifm" value="ReplyPool:" />
      </node>
      <node concept="3EZMnI" id="3pD1eW3N9BQ" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3N9BS" role="3F10Kt" />
        <node concept="3XFhqQ" id="3pD1eW3N9C1" role="3EZMnx" />
        <node concept="3F2HdR" id="3pD1eW3N9C7" role="3EZMnx">
          <property role="S$F3r" value="true" />
          <ref role="1NtTu8" to="tce9:3pD1eW3NxLv" resolve="replyPool" />
          <node concept="2EHx9g" id="3pD1eW3N9Cd" role="2czzBx" />
          <node concept="1HlG4h" id="3pD1eW3N9Ch" role="3EmGlc">
            <node concept="1HfYo3" id="3pD1eW3N9Ci" role="1HlULh">
              <node concept="3TQlhw" id="3pD1eW3N9Cj" role="1Hhtcw">
                <node concept="3clFbS" id="3pD1eW3N9Ck" role="2VODD2">
                  <node concept="3clFbF" id="3pD1eW3N9Cl" role="3cqZAp">
                    <node concept="3cpWs3" id="3pD1eW3N9Cm" role="3clFbG">
                      <node concept="2OqwBi" id="3pD1eW3N9Co" role="3uHU7B">
                        <node concept="2OqwBi" id="3pD1eW3N9Cp" role="2Oq$k0">
                          <node concept="pncrf" id="3pD1eW3N9Cq" role="2Oq$k0" />
                          <node concept="3Tsc0h" id="3pD1eW3NbWG" role="2OqNvi">
                            <ref role="3TtcxE" to="tce9:3pD1eW3NxLv" resolve="replyPool" />
                          </node>
                        </node>
                        <node concept="34oBXx" id="3pD1eW3N9Cs" role="2OqNvi" />
                      </node>
                      <node concept="1eOMI4" id="3pD1eW3N9Cu" role="3uHU7w">
                        <node concept="3K4zz7" id="3pD1eW3N9Cv" role="1eOMHV">
                          <node concept="Xl_RD" id="3pD1eW3N9Cw" role="3K4E3e">
                            <property role="Xl_RC" value=" reply." />
                          </node>
                          <node concept="Xl_RD" id="3pD1eW3N9Cx" role="3K4GZi">
                            <property role="Xl_RC" value=" replies." />
                          </node>
                          <node concept="3clFbC" id="3pD1eW3N9Cy" role="3K4Cdx">
                            <node concept="3cmrfG" id="3pD1eW3N9Cz" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="2OqwBi" id="3pD1eW3N9C$" role="3uHU7B">
                              <node concept="2OqwBi" id="3pD1eW3N9C_" role="2Oq$k0">
                                <node concept="pncrf" id="3pD1eW3N9CA" role="2Oq$k0" />
                                <node concept="3Tsc0h" id="3pD1eW3NACT" role="2OqNvi">
                                  <ref role="3TtcxE" to="tce9:3pD1eW3NxLv" resolve="replyPool" />
                                </node>
                              </node>
                              <node concept="34oBXx" id="3pD1eW3N9CC" role="2OqNvi" />
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
        <node concept="2iRfu4" id="3pD1eW3N9BV" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3pD1eW3N9BE" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="3pD1eW3O2vA">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.replykind" />
    <property role="TrG5h" value="name" />
    <ref role="1XX52x" to="tce9:3pD1eW3O2v6" resolve="ReplyStatic" />
    <node concept="3F0A7n" id="3pD1eW3O2vC" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="3pD1eW3O2wv">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.replykind" />
    <ref role="1XX52x" to="tce9:3pD1eW3O2v6" resolve="ReplyStatic" />
    <node concept="3EZMnI" id="3pD1eW3O2wx" role="2wV5jI">
      <node concept="PMmxH" id="3pD1eW3O2x1" role="3EZMnx">
        <ref role="PMmxG" node="3pD1eW3O2vA" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3pD1eW3O2wI" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
      </node>
      <node concept="3F0ifn" id="3pD1eW3O2wQ" role="3EZMnx">
        <property role="3F0ifm" value="reply" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="3pD1eW3O2xm" role="3EZMnx">
        <ref role="1NtTu8" to="tce9:3pD1eW3O2v7" resolve="reply" />
      </node>
      <node concept="2iRfu4" id="3pD1eW3O2w$" role="2iSdaV" />
      <node concept="VPXOz" id="3_JIMtLPq6w" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3_JIMtLOUAD">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.secondclass" />
    <ref role="1XX52x" to="tce9:3_JIMtLODml" resolve="GroupId" />
    <node concept="3EZMnI" id="3_JIMtLOUAF" role="2wV5jI">
      <node concept="3F0ifn" id="3_JIMtLOUAM" role="3EZMnx">
        <property role="3F0ifm" value="group id" />
      </node>
      <node concept="3F0A7n" id="3_JIMtLOUAS" role="3EZMnx">
        <ref role="1NtTu8" to="tce9:3_JIMtLODmm" resolve="id" />
      </node>
      <node concept="2iRfu4" id="3_JIMtLOUAI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3_JIMtLOUB3">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.secondclass" />
    <ref role="1XX52x" to="tce9:3_JIMtLODmr" resolve="UserId" />
    <node concept="3EZMnI" id="3_JIMtLOUB5" role="2wV5jI">
      <node concept="3F0ifn" id="3_JIMtLOUBc" role="3EZMnx">
        <property role="3F0ifm" value="user id" />
      </node>
      <node concept="3F0A7n" id="3_JIMtLOUBi" role="3EZMnx">
        <ref role="1NtTu8" to="tce9:3_JIMtLODms" resolve="id" />
      </node>
      <node concept="2iRfu4" id="3_JIMtLOUB8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3_JIMtLP0xE">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.firstclass" />
    <ref role="1XX52x" to="tce9:3_JIMtLODmb" resolve="OnBoot" />
    <node concept="3EZMnI" id="3_JIMtLP0xG" role="2wV5jI">
      <node concept="3F0ifn" id="3_JIMtLP0xN" role="3EZMnx">
        <property role="3F0ifm" value="Send to" />
      </node>
      <node concept="3F1sOY" id="3_JIMtLP0xT" role="3EZMnx">
        <ref role="1NtTu8" to="tce9:3_JIMtLOJW5" resolve="id" />
      </node>
      <node concept="3F0ifn" id="y3b4jZ5Wfe" role="3EZMnx">
        <property role="3F0ifm" value="with" />
      </node>
      <node concept="3F1sOY" id="y3b4jZ65gD" role="3EZMnx">
        <ref role="1NtTu8" to="tce9:3_JIMtLODmd" resolve="reply" />
      </node>
      <node concept="2iRfu4" id="3_JIMtLP0xJ" role="2iSdaV" />
      <node concept="VPXOz" id="3_JIMtLPq6s" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3_JIMtLP6BY">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.firstclass" />
    <ref role="1XX52x" to="tce9:3_JIMtLODmz" resolve="OnReceive" />
    <node concept="3EZMnI" id="3_JIMtLP6C0" role="2wV5jI">
      <node concept="3F0ifn" id="3_JIMtLP6C7" role="3EZMnx">
        <property role="3F0ifm" value="If" />
      </node>
      <node concept="3F1sOY" id="3_JIMtLP6Cd" role="3EZMnx">
        <ref role="1NtTu8" to="tce9:3_JIMtLODm$" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="3_JIMtLP6Cl" role="3EZMnx">
        <property role="3F0ifm" value="then" />
      </node>
      <node concept="3F1sOY" id="y3b4jZ6Cm7" role="3EZMnx">
        <ref role="1NtTu8" to="tce9:3_JIMtLODmA" resolve="reply" />
      </node>
      <node concept="2iRfu4" id="3_JIMtLP6C3" role="2iSdaV" />
      <node concept="VPXOz" id="3_JIMtLPq6u" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3_JIMtLPcTE">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.secondclass" />
    <ref role="1XX52x" to="tce9:3_JIMtLPcTs" resolve="KeywordContainsCondition" />
    <node concept="3EZMnI" id="3_JIMtLPcTG" role="2wV5jI">
      <node concept="3F0ifn" id="3_JIMtLPcTN" role="3EZMnx">
        <property role="3F0ifm" value="contains keyword" />
      </node>
      <node concept="3F2HdR" id="3_JIMtLPcTT" role="3EZMnx">
        <property role="2czwfO" value=" and " />
        <ref role="1NtTu8" to="tce9:3_JIMtLPcTx" resolve="keywords" />
        <node concept="2iRfu4" id="3_JIMtLPcTV" role="2czzBx" />
      </node>
      <node concept="2iRfu4" id="3_JIMtLPcTJ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3_JIMtLPjnx">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.secondclass" />
    <ref role="1XX52x" to="tce9:3_JIMtLPcTt" resolve="Keyword" />
    <node concept="3F0A7n" id="3_JIMtLPjnz" role="2wV5jI">
      <ref role="1NtTu8" to="tce9:3_JIMtLPcTu" resolve="keyword" />
    </node>
  </node>
  <node concept="24kQdi" id="y3b4jZ5O07">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.firstclass" />
    <ref role="1XX52x" to="tce9:y3b4jZ5NZX" resolve="ReplyReference" />
    <node concept="1iCGBv" id="y3b4jZ5O0i" role="2wV5jI">
      <ref role="1NtTu8" to="tce9:y3b4jZ5NZY" resolve="reply" />
      <node concept="1sVBvm" id="y3b4jZ5O0k" role="1sWHZn">
        <node concept="3F0A7n" id="y3b4jZ5O0r" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
</model>

