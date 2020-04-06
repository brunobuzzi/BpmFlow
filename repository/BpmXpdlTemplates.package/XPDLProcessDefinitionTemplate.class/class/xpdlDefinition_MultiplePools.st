multiple pools
xpdlDefinition_MultiplePools

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="5a63eb60-0ad4-4cd7-86d8-d9690fe1dbee" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2015-10-26T17:09:36.6828921-03:00</Created>
    <ModificationDate>2016-07-06T11:25:55.3655194-03:00</ModificationDate>
    <Description>Diagram 1</Description>
    <Documentation />
  </PackageHeader>
  <RedefinableHeader>
    <Author>Usuario</Author>
    <Version>1.0</Version>
    <Countrykey>CO</Countrykey>
  </RedefinableHeader>
  <ExternalPackages />
  <Pools>
    <Pool Id="bfb9e736-ab6b-4f95-bcea-133239daf0dc" Name="Main Process" Process="d9658fe7-dfa5-4e69-b390-55e3fa3ae40e" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="41adedee-44fe-44b0-b75c-5f58dbc24ce1" Name="Process 1" Process="067fdf7c-5cdd-4b23-8ea4-06e0427129b5" BoundaryVisible="true">
      <Lanes>
        <Lane Id="626dd4fd-26c2-4c4d-8a51-1c8dc9c98e5b" Name="Lane 1" ParentPool="41adedee-44fe-44b0-b75c-5f58dbc24ce1">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="123" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="9ab33988-e632-4a26-a49e-de790311360b" Name="Lane 3" ParentPool="41adedee-44fe-44b0-b75c-5f58dbc24ce1">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="116" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="123" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="b1b5c9ec-d9df-47c2-80eb-fd58a4d85941" Name="Lane 2" ParentPool="41adedee-44fe-44b0-b75c-5f58dbc24ce1">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="126" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="239" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="365" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="17" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="a210de08-da46-4c3b-bcfc-6a31b86e073b" Name="Process 2" Process="ac43d86e-33a7-4bde-9304-d5fd33244425" BoundaryVisible="true">
      <Lanes>
        <Lane Id="fd98baf4-8358-4bba-8536-f53bfe60e95c" Name="Lane 5" ParentPool="a210de08-da46-4c3b-bcfc-6a31b86e073b">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="121" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="b1597a44-7373-4c76-98af-249d0da3c0c7" Name="Lane 4" ParentPool="a210de08-da46-4c3b-bcfc-6a31b86e073b">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="129" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="121" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="250" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="29" YCoordinate="394" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="d9658fe7-dfa5-4e69-b390-55e3fa3ae40e" Name="Main Process">
      <ProcessHeader>
        <Created>2016-07-06T12:16:55.1383308-03:00</Created>
        <Description />
      </ProcessHeader>
      <RedefinableHeader>
        <Author />
        <Version />
        <Countrykey>CO</Countrykey>
      </RedefinableHeader>
      <ActivitySets />
      <DataInputOutputs />
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;0001-01-01T00:00:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-07-06T11:25:27.1999281-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="067fdf7c-5cdd-4b23-8ea4-06e0427129b5" Name="Process 1">
      <ProcessHeader>
        <Created>2016-07-06T12:16:55.170352-03:00</Created>
        <Description />
      </ProcessHeader>
      <RedefinableHeader>
        <Author />
        <Version />
        <Countrykey>CO</Countrykey>
      </RedefinableHeader>
      <ActivitySets />
      <DataInputOutputs />
      <Activities>
        <Activity Id="3dbcd4e1-cdee-44ea-b07a-a5a2833df93c" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="121" YCoordinate="56" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="e6d4c401-6d0a-45f6-90ed-439bdd9352cb" Name="Task 1">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="226" YCoordinate="41" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f827860f-e06a-4fe9-bb83-bc7737623959" Name="Task 2">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="369" YCoordinate="41" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="25e320fb-7228-42a8-a947-4f9bb3542c1e" Name="important">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="394" YCoordinate="159" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="2c8fbdf2-5e03-4c6d-b602-c5c1d499266f" Name="Task 3">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="491" YCoordinate="166" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="bf6e8e5f-79ab-4d38-a2d6-001314321bf1" Name="Task 4">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="556" YCoordinate="40" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="0b561a85-853b-44c6-a103-e4e31efdbd7f" Name="end 1">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="656" YCoordinate="181" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="82073a2a-7e6f-476c-8905-f13ae2040f28" Name="Task 5">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="213" YCoordinate="167" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="c3f26afe-55cf-4ab7-a686-f4d1437dc328" Name="Task 6">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="213" YCoordinate="292" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="82b09aab-6386-4b2f-9a6a-2ee2e4ca21f2" Name="define">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="411" YCoordinate="302" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="48418692-5a89-46a0-9936-a456437a11f1" Name="end 2">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="626" YCoordinate="307" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="3d5d2d6a-0182-432c-ad19-bd563de23760" From="3dbcd4e1-cdee-44ea-b07a-a5a2833df93c" To="e6d4c401-6d0a-45f6-90ed-439bdd9352cb" Name="tr1">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="151" YCoordinate="71" />
              <Coordinates XCoordinate="226" YCoordinate="71" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="b2c5de8a-b49f-4c9a-9fad-31e287d63c1e" From="e6d4c401-6d0a-45f6-90ed-439bdd9352cb" To="f827860f-e06a-4fe9-bb83-bc7737623959" Name="tr2">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="316" YCoordinate="71" />
              <Coordinates XCoordinate="369" YCoordinate="71" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="f11b137b-2bd8-46d3-9121-643e560caaf5" From="f827860f-e06a-4fe9-bb83-bc7737623959" To="25e320fb-7228-42a8-a947-4f9bb3542c1e" Name="tr3">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="414" YCoordinate="101" />
              <Coordinates XCoordinate="414" YCoordinate="159" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="0f154c7a-6d4b-41de-ab54-1856acad2b9c" From="25e320fb-7228-42a8-a947-4f9bb3542c1e" To="2c8fbdf2-5e03-4c6d-b602-c5c1d499266f" Name="tr7">
          <Condition Type="CONDITION">
            <Expression />
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="434" YCoordinate="179" />
              <Coordinates XCoordinate="460.5" YCoordinate="179" />
              <Coordinates XCoordinate="460.5" YCoordinate="196" />
              <Coordinates XCoordinate="491" YCoordinate="196" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="518ed041-31a0-4a17-a5e0-1b90fcddfe33" From="25e320fb-7228-42a8-a947-4f9bb3542c1e" To="bf6e8e5f-79ab-4d38-a2d6-001314321bf1" Name="tr4">
          <Condition Type="CONDITION">
            <Expression />
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="434" YCoordinate="179" />
              <Coordinates XCoordinate="475" YCoordinate="179" />
              <Coordinates XCoordinate="475" YCoordinate="70" />
              <Coordinates XCoordinate="556" YCoordinate="70" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="3d509589-410f-4c73-b3fc-a006aea96aa8" From="bf6e8e5f-79ab-4d38-a2d6-001314321bf1" To="0b561a85-853b-44c6-a103-e4e31efdbd7f" Name="tr5">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="646" YCoordinate="70" />
              <Coordinates XCoordinate="671" YCoordinate="70" />
              <Coordinates XCoordinate="671" YCoordinate="181" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="52b86ba3-9ea9-4be8-9df8-c7bf4bf1a91b" From="2c8fbdf2-5e03-4c6d-b602-c5c1d499266f" To="0b561a85-853b-44c6-a103-e4e31efdbd7f" Name="tr8">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="581" YCoordinate="196" />
              <Coordinates XCoordinate="656" YCoordinate="196" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="0b49e38f-725e-481b-b834-a4df109467d9" From="25e320fb-7228-42a8-a947-4f9bb3542c1e" To="82073a2a-7e6f-476c-8905-f13ae2040f28" Name="tr6">
          <Condition Type="CONDITION">
            <Expression />
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="394" YCoordinate="179" />
              <Coordinates XCoordinate="330" YCoordinate="179" />
              <Coordinates XCoordinate="330" YCoordinate="197" />
              <Coordinates XCoordinate="303" YCoordinate="197" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="952fe7fc-c7c1-4541-853c-591f6cd15e42" From="82073a2a-7e6f-476c-8905-f13ae2040f28" To="c3f26afe-55cf-4ab7-a686-f4d1437dc328" Name="tr9">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="258" YCoordinate="227" />
              <Coordinates XCoordinate="258" YCoordinate="292" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="8165fe88-fd72-499b-98eb-b59b0bf0ace8" From="c3f26afe-55cf-4ab7-a686-f4d1437dc328" To="82b09aab-6386-4b2f-9a6a-2ee2e4ca21f2" Name="tr10">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="303" YCoordinate="322" />
              <Coordinates XCoordinate="411" YCoordinate="322" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="d2c3f3a9-c48a-4f21-8b7e-6e7e8d28410a" From="82b09aab-6386-4b2f-9a6a-2ee2e4ca21f2" To="2c8fbdf2-5e03-4c6d-b602-c5c1d499266f" Name="tr11">
          <Condition Type="CONDITION">
            <Expression />
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="431" YCoordinate="302" />
              <Coordinates XCoordinate="431" YCoordinate="264" />
              <Coordinates XCoordinate="536" YCoordinate="264" />
              <Coordinates XCoordinate="536" YCoordinate="226" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="62c983eb-dc46-480f-bfcc-c326d40499f2" From="82b09aab-6386-4b2f-9a6a-2ee2e4ca21f2" To="48418692-5a89-46a0-9936-a456437a11f1" Name="tr12">
          <Condition Type="CONDITION">
            <Expression />
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="451" YCoordinate="322" />
              <Coordinates XCoordinate="626" YCoordinate="322" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;0001-01-01T00:00:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-07-06T11:25:27.2054826-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="ac43d86e-33a7-4bde-9304-d5fd33244425" Name="Process 2">
      <ProcessHeader>
        <Created>2016-07-06T12:16:55.2824267-03:00</Created>
        <Description />
      </ProcessHeader>
      <RedefinableHeader>
        <Author />
        <Version />
        <Countrykey>CO</Countrykey>
      </RedefinableHeader>
      <ActivitySets />
      <DataInputOutputs />
      <Activities>
        <Activity Id="fcb52689-0af2-4b22-8e3e-7f61360cf186" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="151" YCoordinate="439" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="69d9b864-b64a-4c26-a7b4-279883250a9a" Name="Task 7">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="264" YCoordinate="424" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="a50009f8-f914-4926-a507-6ac67759c2d2" Name="do it">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="474" YCoordinate="434" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f06863dc-728a-4024-a027-2f2359ecbe38" Name="Task 8">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="148" YCoordinate="554" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="851598b7-2a2e-4d3e-b3fc-af83d898b639" Name="end 1">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="613" YCoordinate="439" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="9be72181-a75f-45d5-8b83-462058b9c48f" Name="Task 9">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="333" YCoordinate="554" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="d76deaed-cb0b-4e02-ba6b-ab2bf00386fa" Name="end 2">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="577" YCoordinate="569" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="fd739520-cdc1-4a4c-a95d-5b73ffc81dae" From="fcb52689-0af2-4b22-8e3e-7f61360cf186" To="69d9b864-b64a-4c26-a7b4-279883250a9a" Name="tr1">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="181" YCoordinate="454" />
              <Coordinates XCoordinate="264" YCoordinate="454" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="80721a20-f9f0-4dbf-9b02-54542d8478b1" From="69d9b864-b64a-4c26-a7b4-279883250a9a" To="a50009f8-f914-4926-a507-6ac67759c2d2" Name="tr2">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="354" YCoordinate="454" />
              <Coordinates XCoordinate="474" YCoordinate="454" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="fb167906-fb0e-4878-b808-e1897a96651a" From="a50009f8-f914-4926-a507-6ac67759c2d2" To="f06863dc-728a-4024-a027-2f2359ecbe38" Name="tr4">
          <Condition Type="CONDITION">
            <Expression />
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="494" YCoordinate="474" />
              <Coordinates XCoordinate="494" YCoordinate="503" />
              <Coordinates XCoordinate="193" YCoordinate="503" />
              <Coordinates XCoordinate="193" YCoordinate="556" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="fc2ce353-8820-41ab-a24e-4f3a529b544d" From="a50009f8-f914-4926-a507-6ac67759c2d2" To="851598b7-2a2e-4d3e-b3fc-af83d898b639" Name="tr3">
          <Condition Type="CONDITION">
            <Expression />
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="514" YCoordinate="454" />
              <Coordinates XCoordinate="613" YCoordinate="454" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="c3d65c33-dce3-40aa-b399-6df05579a68b" From="f06863dc-728a-4024-a027-2f2359ecbe38" To="9be72181-a75f-45d5-8b83-462058b9c48f" Name="tr5">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="238" YCoordinate="584" />
              <Coordinates XCoordinate="333" YCoordinate="584" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="e67010b1-b3d9-4f02-b55b-d157defb1528" From="9be72181-a75f-45d5-8b83-462058b9c48f" To="d76deaed-cb0b-4e02-ba6b-ab2bf00386fa" Name="tr6">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="423" YCoordinate="584" />
              <Coordinates XCoordinate="577" YCoordinate="584" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;0001-01-01T00:00:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-07-06T11:25:27.2064807-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'