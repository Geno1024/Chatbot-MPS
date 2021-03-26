<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f302cdac-9c51-4560-a64f-4f9c93609070(com.geno1024.chatbotlang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tce9" ref="r:e7a593e3-4a2f-4676-8ccc-c5b95b97fe2d(com.geno1024.chatbotlang.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
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
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="2PRNT4tOkPf">
    <ref role="1XX52x" to="tce9:2PRNT4tO8HM" resolve="ChatbotProgram" />
    <node concept="3EZMnI" id="3pD1eW3LHyV" role="2wV5jI">
      <node concept="3EZMnI" id="3pD1eW3LHz2" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3LHz4" role="3F10Kt" />
        <node concept="3F0ifn" id="3pD1eW3LHzc" role="3EZMnx">
          <property role="3F0ifm" value="Chatbot Program for" />
        </node>
        <node concept="3F0A7n" id="3pD1eW3LHzi" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="3pD1eW3LHz7" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="3pD1eW3LHz_" role="3EZMnx" />
      <node concept="3EZMnI" id="3pD1eW3LYQv" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3LYQx" role="3F10Kt" />
        <node concept="3F0ifn" id="3pD1eW3LYQz" role="3EZMnx">
          <property role="3F0ifm" value="QQ:" />
        </node>
        <node concept="3F0A7n" id="3pD1eW3LYQS" role="3EZMnx">
          <ref role="1NtTu8" to="tce9:2PRNT4tOkxf" resolve="qqid" />
        </node>
        <node concept="2iRfu4" id="3pD1eW3LYQ$" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="3pD1eW3M0v_" role="3EZMnx" />
      <node concept="3F0ifn" id="3pD1eW3LH$m" role="3EZMnx">
        <property role="3F0ifm" value="Reply Pool:" />
      </node>
      <node concept="3EZMnI" id="3pD1eW3LH$C" role="3EZMnx">
        <node concept="VPM3Z" id="3pD1eW3LH$E" role="3F10Kt" />
        <node concept="3XFhqQ" id="3pD1eW3LH_c" role="3EZMnx" />
        <node concept="3F1sOY" id="3pD1eW3LH_i" role="3EZMnx">
          <ref role="1NtTu8" to="tce9:2PRNT4tOkxn" resolve="pool" />
        </node>
        <node concept="2iRfu4" id="3pD1eW3LH$H" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3pD1eW3LHyY" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="3pD1eW3LHzY" role="6VMZX">
      <node concept="2iRfu4" id="3pD1eW3LHzZ" role="2iSdaV" />
      <node concept="3F0ifn" id="3pD1eW3LH$2" role="3EZMnx">
        <property role="3F0ifm" value="QQ password:" />
      </node>
      <node concept="3F0A7n" id="3pD1eW3LH$i" role="3EZMnx">
        <ref role="1NtTu8" to="tce9:2PRNT4tOkxh" resolve="qqpassword" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3pD1eW3M290">
    <ref role="1XX52x" to="tce9:2PRNT4tOkxk" resolve="ReplyPool" />
    <node concept="3F2HdR" id="3pD1eW3M292" role="2wV5jI">
      <ref role="1NtTu8" to="tce9:2PRNT4tOkxs" resolve="replies" />
      <node concept="2EHx9g" id="3pD1eW3M29c" role="2czzBx" />
    </node>
  </node>
  <node concept="24kQdi" id="3pD1eW3M29e">
    <ref role="1XX52x" to="tce9:2PRNT4tOkxu" resolve="OnReceive" />
    <node concept="3EZMnI" id="3pD1eW3M29g" role="2wV5jI">
      <node concept="3F0ifn" id="3pD1eW3M29n" role="3EZMnx">
        <property role="3F0ifm" value="If message contains" />
      </node>
      <node concept="3F0A7n" id="3pD1eW3M29t" role="3EZMnx">
        <ref role="1NtTu8" to="tce9:2PRNT4tOkxv" resolve="keyword" />
      </node>
      <node concept="3F0ifn" id="3pD1eW3M29_" role="3EZMnx">
        <property role="3F0ifm" value="then reply" />
      </node>
      <node concept="3F0A7n" id="3pD1eW3M29J" role="3EZMnx">
        <ref role="1NtTu8" to="tce9:2PRNT4tOkxx" resolve="reply" />
      </node>
      <node concept="2iRfu4" id="3pD1eW3M29j" role="2iSdaV" />
    </node>
  </node>
</model>

