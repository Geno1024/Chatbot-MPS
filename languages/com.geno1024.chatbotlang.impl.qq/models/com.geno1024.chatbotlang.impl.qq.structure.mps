<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e61b9132-04ae-45d1-8614-708b1ec071cd(com.geno1024.chatbotlang.impl.qq.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tce9" ref="r:e7a593e3-4a2f-4676-8ccc-c5b95b97fe2d(com.geno1024.chatbotlang.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
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
  <node concept="1TIwiD" id="3pD1eW3NSnM">
    <property role="EcuMT" value="3920670375210354162" />
    <property role="TrG5h" value="QQLogin" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.impl.qq" />
    <ref role="1TJDcQ" to="tce9:3pD1eW3M4xh" resolve="Login" />
    <node concept="1TJgyi" id="3pD1eW3NTbQ" role="1TKVEl">
      <property role="IQ2nx" value="3920670375210357494" />
      <property role="TrG5h" value="qqid" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3pD1eW3NTbS" role="1TKVEl">
      <property role="IQ2nx" value="3920670375210357496" />
      <property role="TrG5h" value="qqpassword" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="y3b4jZ6MyG">
    <property role="EcuMT" value="613382649101887660" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.impl.qq" />
    <property role="TrG5h" value="QQ" />
    <property role="34LRSv" value="QQ" />
    <ref role="1TJDcQ" to="tce9:y3b4jZ6MxZ" resolve="ChatLanguage" />
  </node>
</model>

