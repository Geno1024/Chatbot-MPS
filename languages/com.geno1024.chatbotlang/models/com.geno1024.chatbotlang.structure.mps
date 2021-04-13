<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e7a593e3-4a2f-4676-8ccc-c5b95b97fe2d(com.geno1024.chatbotlang.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="4fqr" ref="r:fa713d69-08ea-4732-b1f2-cb07f9e103ef(jetbrains.mps.execution.util.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="7862711839422615209" name="jetbrains.mps.lang.structure.structure.DocumentedNodeAnnotation" flags="ng" index="t5JxF">
        <property id="7862711839422615217" name="text" index="t5JxN" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="418049251856799813" name="jetbrains.mps.lang.structure.structure.ExperimentalAPINodeAttribute" flags="ig" index="1AhYRh" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3pD1eW3M4xe">
    <property role="EcuMT" value="3920670375209879630" />
    <property role="TrG5h" value="RobotConfig" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3pD1eW3M4xf" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="4if8LWOsjk6" role="PzmwI">
      <ref role="PrY4T" to="4fqr:431DWIovi3l" resolve="IMainClass" />
    </node>
    <node concept="1TJgyj" id="y3b4jZ6Y5X" role="1TKVEi">
      <property role="IQ2ns" value="613382649101934973" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="uses" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="y3b4jZ6Mxj" resolve="ChatTypeList" />
    </node>
    <node concept="1TJgyj" id="3pD1eW3M4xk" role="1TKVEi">
      <property role="IQ2ns" value="3920670375209879636" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logins" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3pD1eW3NmUM" resolve="LoginList" />
    </node>
    <node concept="1TJgyj" id="3pD1eW3MCPP" role="1TKVEi">
      <property role="IQ2ns" value="3920670375210028405" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="onBoot" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3pD1eW3NmUN" resolve="OnBootList" />
    </node>
    <node concept="1TJgyj" id="3pD1eW3MCPU" role="1TKVEi">
      <property role="IQ2ns" value="3920670375210028410" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="onReceive" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3pD1eW3NmUO" resolve="OnReceiveList" />
    </node>
    <node concept="1TJgyj" id="3pD1eW3Ni_D" role="1TKVEi">
      <property role="IQ2ns" value="3920670375210199401" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="onSchedule" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3pD1eW3NmUP" resolve="OnScheduleList" />
    </node>
    <node concept="1TJgyj" id="3pD1eW3MCPK" role="1TKVEi">
      <property role="IQ2ns" value="3920670375210028400" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="replyPool" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3pD1eW3NmUQ" resolve="ReplyList" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pD1eW3M4xh">
    <property role="EcuMT" value="3920670375209879633" />
    <property role="TrG5h" value="Login" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.firstclass" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3pD1eW3MCPG">
    <property role="EcuMT" value="3920670375210028396" />
    <property role="TrG5h" value="Reply" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.firstclass" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3_JIMtLQ98n" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pD1eW3NmUM">
    <property role="EcuMT" value="3920670375210217138" />
    <property role="TrG5h" value="LoginList" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3pD1eW3NoXb" role="1TKVEi">
      <property role="IQ2ns" value="3920670375210225483" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="logins" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3pD1eW3M4xh" resolve="Login" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pD1eW3NmUN">
    <property role="EcuMT" value="3920670375210217139" />
    <property role="TrG5h" value="OnBootList" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3pD1eW3Nw$E" role="1TKVEi">
      <property role="IQ2ns" value="3920670375210256682" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="onBoot" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3_JIMtLODmb" resolve="OnBoot" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pD1eW3NmUO">
    <property role="EcuMT" value="3920670375210217140" />
    <property role="TrG5h" value="OnReceiveList" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3pD1eW3NxLr" role="1TKVEi">
      <property role="IQ2ns" value="3920670375210261595" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="onReceive" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3_JIMtLODmz" resolve="OnReceive" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pD1eW3NmUP">
    <property role="EcuMT" value="3920670375210217141" />
    <property role="TrG5h" value="OnScheduleList" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3pD1eW3NxLt" role="1TKVEi">
      <property role="IQ2ns" value="3920670375210261597" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="onSchedule" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3_JIMtLODmD" resolve="OnSchedule" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pD1eW3NmUQ">
    <property role="EcuMT" value="3920670375210217142" />
    <property role="TrG5h" value="ReplyList" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3pD1eW3NxLv" role="1TKVEi">
      <property role="IQ2ns" value="3920670375210261599" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="replyPool" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3pD1eW3MCPG" resolve="Reply" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pD1eW3O2v6">
    <property role="EcuMT" value="3920670375210395590" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.replykind" />
    <property role="TrG5h" value="ReplyStatic" />
    <ref role="1TJDcQ" node="3pD1eW3MCPG" resolve="Reply" />
    <node concept="1TJgyi" id="3pD1eW3O2v7" role="1TKVEl">
      <property role="IQ2nx" value="3920670375210395591" />
      <property role="TrG5h" value="reply" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pD1eW3O2vb">
    <property role="EcuMT" value="3920670375210395595" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.replykind" />
    <property role="TrG5h" value="ReplyInputAware" />
    <ref role="1TJDcQ" node="3pD1eW3MCPG" resolve="Reply" />
    <node concept="PrWs8" id="3pD1eW3O2vc" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3pD1eW3O2ve">
    <property role="EcuMT" value="3920670375210395598" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.replykind" />
    <property role="TrG5h" value="ReplyExternal" />
    <ref role="1TJDcQ" node="3pD1eW3MCPG" resolve="Reply" />
    <node concept="PrWs8" id="3pD1eW3O2vf" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3_JIMtLODmb">
    <property role="TrG5h" value="OnBoot" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.firstclass" />
    <property role="EcuMT" value="3920670375210028397" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3_JIMtLOJW5" role="1TKVEi">
      <property role="IQ2ns" value="4138732360664547077" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="id" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3_JIMtLOJW4" resolve="Id" />
    </node>
    <node concept="1TJgyj" id="3_JIMtLODmd" role="1TKVEi">
      <property role="IQ2ns" value="4138732360664520077" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="reply" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="y3b4jZ5NZX" resolve="ReplyReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="3_JIMtLODmh">
    <property role="EcuMT" value="4138732360664520081" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <property role="TrG5h" value="GroupIdList" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3_JIMtLODmo" role="1TKVEi">
      <property role="IQ2ns" value="4138732360664520088" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="ids" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3_JIMtLODml" resolve="GroupId" />
    </node>
  </node>
  <node concept="1TIwiD" id="3_JIMtLODml">
    <property role="EcuMT" value="4138732360664520085" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.secondclass" />
    <property role="TrG5h" value="GroupId" />
    <ref role="1TJDcQ" node="3_JIMtLOJW4" resolve="Id" />
    <node concept="1TJgyi" id="3_JIMtLODmm" role="1TKVEl">
      <property role="IQ2nx" value="4138732360664520086" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3_JIMtLODmq">
    <property role="EcuMT" value="4138732360664520090" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <property role="TrG5h" value="UserIdList" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3_JIMtLODmu" role="1TKVEi">
      <property role="IQ2ns" value="4138732360664520094" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="ids" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3_JIMtLODmr" resolve="UserId" />
    </node>
  </node>
  <node concept="1TIwiD" id="3_JIMtLODmr">
    <property role="EcuMT" value="4138732360664520091" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.secondclass" />
    <property role="TrG5h" value="UserId" />
    <ref role="1TJDcQ" node="3_JIMtLOJW4" resolve="Id" />
    <node concept="1TJgyi" id="3_JIMtLODms" role="1TKVEl">
      <property role="IQ2nx" value="4138732360664520092" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3_JIMtLODmw">
    <property role="EcuMT" value="4138732360664520096" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.secondclass" />
    <property role="TrG5h" value="Condition" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3_JIMtLODmz">
    <property role="TrG5h" value="OnReceive" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.firstclass" />
    <property role="EcuMT" value="3920670375210028409" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3_JIMtLODm$" role="1TKVEi">
      <property role="IQ2ns" value="4138732360664520100" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3_JIMtLODmw" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="3_JIMtLODmA" role="1TKVEi">
      <property role="IQ2ns" value="4138732360664520102" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="reply" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="y3b4jZ5NZX" resolve="ReplyReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="3_JIMtLODmD">
    <property role="TrG5h" value="OnSchedule" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.firstclass" />
    <property role="EcuMT" value="3920670375210199398" />
    <node concept="t5JxF" id="3_JIMtLODmE" role="lGtFl">
      <property role="t5JxN" value="Unused" />
    </node>
    <node concept="1AhYRh" id="3_JIMtLODmI" role="lGtFl" />
  </node>
  <node concept="1TIwiD" id="3_JIMtLOJW4">
    <property role="EcuMT" value="4138732360664547076" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.secondclass" />
    <property role="TrG5h" value="Id" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3_JIMtLPcTs">
    <property role="EcuMT" value="4138732360664665692" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.secondclass" />
    <property role="TrG5h" value="KeywordContainsCondition" />
    <ref role="1TJDcQ" node="3_JIMtLODmw" resolve="Condition" />
    <node concept="1TJgyj" id="3_JIMtLPcTx" role="1TKVEi">
      <property role="IQ2ns" value="4138732360664665697" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="keywords" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="3_JIMtLPcTt" resolve="Keyword" />
    </node>
  </node>
  <node concept="1TIwiD" id="3_JIMtLPcTt">
    <property role="EcuMT" value="4138732360664665693" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.secondclass" />
    <property role="TrG5h" value="Keyword" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3_JIMtLPcTu" role="1TKVEl">
      <property role="IQ2nx" value="4138732360664665694" />
      <property role="TrG5h" value="keyword" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="y3b4jZ5NZX">
    <property role="EcuMT" value="613382649101631485" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.firstclass" />
    <property role="TrG5h" value="ReplyReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="y3b4jZ5NZY" role="1TKVEi">
      <property role="IQ2ns" value="613382649101631486" />
      <property role="20kJfa" value="reply" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3pD1eW3MCPG" resolve="Reply" />
    </node>
  </node>
  <node concept="1TIwiD" id="y3b4jZ6Mxi">
    <property role="EcuMT" value="613382649101887570" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.secondclass" />
    <property role="TrG5h" value="ChatType" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="y3b4jZ6My0" role="1TKVEi">
      <property role="IQ2ns" value="613382649101887616" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="language" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="y3b4jZ6MxZ" resolve="ChatLanguage" />
    </node>
  </node>
  <node concept="1TIwiD" id="y3b4jZ6Mxj">
    <property role="EcuMT" value="613382649101887571" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.list" />
    <property role="TrG5h" value="ChatTypeList" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="y3b4jZ6Mxk" role="1TKVEi">
      <property role="IQ2ns" value="613382649101887572" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="using" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="y3b4jZ6Mxi" resolve="ChatType" />
    </node>
  </node>
  <node concept="1TIwiD" id="y3b4jZ6MxZ">
    <property role="EcuMT" value="613382649101887615" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.firstclass" />
    <property role="TrG5h" value="ChatLanguage" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
</model>

