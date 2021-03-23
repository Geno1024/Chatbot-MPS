<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e7a593e3-4a2f-4676-8ccc-c5b95b97fe2d(com.geno1024.chatbotlang.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="2PRNT4tO8HM">
    <property role="EcuMT" value="3276315476112739186" />
    <property role="TrG5h" value="ChatbotProgram" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2PRNT4tOkkj" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="2PRNT4tOkxf" role="1TKVEl">
      <property role="IQ2nx" value="3276315476112787535" />
      <property role="TrG5h" value="qqid" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2PRNT4tOkxh" role="1TKVEl">
      <property role="IQ2nx" value="3276315476112787537" />
      <property role="TrG5h" value="qqpassword" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="2PRNT4tOkxn" role="1TKVEi">
      <property role="IQ2ns" value="3276315476112787543" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="20kJfa" value="pool" />
      <ref role="20lvS9" node="2PRNT4tOkxk" resolve="ReplyPool" />
    </node>
  </node>
  <node concept="1TIwiD" id="2PRNT4tOkxk">
    <property role="EcuMT" value="3276315476112787540" />
    <property role="TrG5h" value="ReplyPool" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2PRNT4tOkxs" role="1TKVEi">
      <property role="IQ2ns" value="3276315476112787548" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="replies" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2PRNT4tOkxp" resolve="Reply" />
    </node>
  </node>
  <node concept="1TIwiD" id="2PRNT4tOkxp">
    <property role="EcuMT" value="3276315476112787545" />
    <property role="TrG5h" value="Reply" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="2PRNT4tOkxu">
    <property role="EcuMT" value="3276315476112787550" />
    <property role="TrG5h" value="OnReceive" />
    <ref role="1TJDcQ" node="2PRNT4tOkxp" resolve="Reply" />
    <node concept="1TJgyi" id="2PRNT4tOkxv" role="1TKVEl">
      <property role="IQ2nx" value="3276315476112787551" />
      <property role="TrG5h" value="keyword" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2PRNT4tOkxx" role="1TKVEl">
      <property role="IQ2nx" value="3276315476112787553" />
      <property role="TrG5h" value="reply" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

