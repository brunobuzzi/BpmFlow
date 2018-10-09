event based gateway
processDefinition_event_based_gateway_01

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="0027ccd4-50e6-419a-a22e-8ca4b5f9fb3c" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2018-10-08T17:24:35.1606708-03:00</Created>
    <ModificationDate>2018-10-09T16:25:23.2940851-03:00</ModificationDate>
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
    <Pool Id="cc6516e2-7cd6-412a-b74e-4ebfbe4a0c97" Name="Main Process" Process="63589e99-86c4-4321-b9e8-4fb82dd5f22b" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="c0fda1d4-bb4d-4c09-a3bc-6d5d5d89bea4" Name="Event Based Gateway" Process="9da9e006-e9ef-4c89-a5cb-8ad0919ec269" BoundaryVisible="true">
      <Lanes>
        <Lane Id="0271d506-1e4f-4ea6-be93-dc3c7cdd6b4c" Name="event manager" ParentPool="c0fda1d4-bb4d-4c09-a3bc-6d5d5d89bea4">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="733" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="783" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="63589e99-86c4-4321-b9e8-4fb82dd5f22b" Name="Main Process">
      <ProcessHeader>
        <Created>2018-10-09T16:25:37.8957133-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2018-10-08T17:24:35.1767952-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2018-10-08T17:24:35.1767952-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="9da9e006-e9ef-4c89-a5cb-8ad0919ec269" Name="Event Based Gateway">
      <ProcessHeader>
        <Created>2018-10-09T16:25:37.896714-03:00</Created>
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
        <Activity Id="86727d0f-4588-40eb-9d66-f8c21abbf8a9" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="130" YCoordinate="252" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="5ece73b3-807c-4fd8-9e16-cf6c54f87c66" Name="send-proposal">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="229" YCoordinate="237" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="a94f499e-cde3-4bc6-a3cb-ea42a14d4f8d" Name="timer">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Timer">
              <TriggerTimer TimeDate="2018-10-09T00:00:00" />
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="489" YCoordinate="56" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;cost&quot;:0}" />
            <ExtendedAttribute Name="activationBlock" Value="[:lastExecutedTime :currentTime | (lastExecutedTime addDays: 1) &gt;= currentTime]" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="107d8111-55a2-476d-95b9-93ed54dc1a24" Name="message">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Message">
              <TriggerResultMessage CatchThrow="THROW">
                <Message Id="12a0796a-b83c-4703-8504-fb45a6c7b3c4" />
              </TriggerResultMessage>
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="491" YCoordinate="136" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="e2f34fb6-48ed-492a-acd1-fac905665e3a" Name="conditional">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Conditional">
              <TriggerConditional>
                <Expression />
              </TriggerConditional>
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="491" YCoordinate="216" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f0230537-d2e1-4926-b0a5-d0c4fa0cb6aa" Name="signal">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Signal">
              <TriggerResultSignal CatchThrow="THROW" />
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="491" YCoordinate="302" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="d2a4bdcb-9b90-45b7-9306-b4ae93d49792" Name="no-response">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="634" YCoordinate="41" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f277c196-1cc6-4e5f-886d-75ea1b658c22" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="775" YCoordinate="265" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="6dffe2db-f43a-447d-89ca-2a21a8322e44" Name="process-response">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="632" YCoordinate="121" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="b56d0805-71db-4b24-aa06-c8509d715271" Name="process-signal">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script />
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="610" YCoordinate="287" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="71583424-cb83-4d49-bc3a-73aafa13ce31" Name="process-condition">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script />
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="594" YCoordinate="201" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="a64d3f3f-bad4-4a40-8c95-7971af737bd0" Name="event">
          <Description />
          <Route ExclusiveType="Event" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="370" YCoordinate="247" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="bb47572d-4d47-4a16-b3ef-cc9186b54387" From="86727d0f-4588-40eb-9d66-f8c21abbf8a9" To="5ece73b3-807c-4fd8-9e16-cf6c54f87c66">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="160" YCoordinate="267" />
              <Coordinates XCoordinate="229" YCoordinate="267" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="be1f1ec0-c562-487b-9195-8f6d90777dc1" From="5ece73b3-807c-4fd8-9e16-cf6c54f87c66" To="a64d3f3f-bad4-4a40-8c95-7971af737bd0">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="319" YCoordinate="267" />
              <Coordinates XCoordinate="370" YCoordinate="267" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1b2296ac-69b3-450a-a652-cbbf92b4d937" From="a64d3f3f-bad4-4a40-8c95-7971af737bd0" To="107d8111-55a2-476d-95b9-93ed54dc1a24">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="410" YCoordinate="267" />
              <Coordinates XCoordinate="450.5" YCoordinate="267" />
              <Coordinates XCoordinate="450.5" YCoordinate="151" />
              <Coordinates XCoordinate="491" YCoordinate="151" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1664f084-de75-4599-885e-22475181d52d" From="a64d3f3f-bad4-4a40-8c95-7971af737bd0" To="a94f499e-cde3-4bc6-a3cb-ea42a14d4f8d">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="390" YCoordinate="247" />
              <Coordinates XCoordinate="390" YCoordinate="71" />
              <Coordinates XCoordinate="489" YCoordinate="71" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="2fe23b98-2575-4d15-806b-bf668fb12c81" From="a64d3f3f-bad4-4a40-8c95-7971af737bd0" To="e2f34fb6-48ed-492a-acd1-fac905665e3a">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="410" YCoordinate="267" />
              <Coordinates XCoordinate="465" YCoordinate="267" />
              <Coordinates XCoordinate="465" YCoordinate="231" />
              <Coordinates XCoordinate="491" YCoordinate="231" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1d507c51-cb6e-410b-a19f-112ee52218da" From="a64d3f3f-bad4-4a40-8c95-7971af737bd0" To="f0230537-d2e1-4926-b0a5-d0c4fa0cb6aa">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="410" YCoordinate="267" />
              <Coordinates XCoordinate="450.5" YCoordinate="267" />
              <Coordinates XCoordinate="450.5" YCoordinate="317" />
              <Coordinates XCoordinate="491" YCoordinate="317" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="c6697bed-f9d0-44f1-ab87-64651f8f0cea" From="a94f499e-cde3-4bc6-a3cb-ea42a14d4f8d" To="d2a4bdcb-9b90-45b7-9306-b4ae93d49792">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="519" YCoordinate="71" />
              <Coordinates XCoordinate="634" YCoordinate="71" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="7c89adf1-94d7-4fde-96ae-4613091c752a" From="d2a4bdcb-9b90-45b7-9306-b4ae93d49792" To="f277c196-1cc6-4e5f-886d-75ea1b658c22">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="724" YCoordinate="71" />
              <Coordinates XCoordinate="790" YCoordinate="71" />
              <Coordinates XCoordinate="790" YCoordinate="265" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="78ad077f-0387-47b0-b1f1-9b5f2a56212e" From="107d8111-55a2-476d-95b9-93ed54dc1a24" To="6dffe2db-f43a-447d-89ca-2a21a8322e44">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="521" YCoordinate="151" />
              <Coordinates XCoordinate="632" YCoordinate="151" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="489b35db-033a-424d-bac2-fee5bd20f8d8" From="6dffe2db-f43a-447d-89ca-2a21a8322e44" To="f277c196-1cc6-4e5f-886d-75ea1b658c22">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="722" YCoordinate="151" />
              <Coordinates XCoordinate="790" YCoordinate="151" />
              <Coordinates XCoordinate="790" YCoordinate="265" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="4ca425c5-3908-4c85-893e-faca233ae772" From="f0230537-d2e1-4926-b0a5-d0c4fa0cb6aa" To="b56d0805-71db-4b24-aa06-c8509d715271">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="521" YCoordinate="317" />
              <Coordinates XCoordinate="610" YCoordinate="317" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="ed635b44-b3af-47aa-a89b-7c783f18b4d6" From="b56d0805-71db-4b24-aa06-c8509d715271" To="f277c196-1cc6-4e5f-886d-75ea1b658c22">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="700" YCoordinate="317" />
              <Coordinates XCoordinate="790" YCoordinate="317" />
              <Coordinates XCoordinate="790" YCoordinate="295" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="81120349-fef2-4b38-b3c1-cbb6c57971ad" From="e2f34fb6-48ed-492a-acd1-fac905665e3a" To="71583424-cb83-4d49-bc3a-73aafa13ce31">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="521" YCoordinate="231" />
              <Coordinates XCoordinate="594" YCoordinate="231" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="24f829e4-47e3-41c7-aaf4-721a49248b71" From="71583424-cb83-4d49-bc3a-73aafa13ce31" To="f277c196-1cc6-4e5f-886d-75ea1b658c22">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="684" YCoordinate="231" />
              <Coordinates XCoordinate="729" YCoordinate="231" />
              <Coordinates XCoordinate="729" YCoordinate="280" />
              <Coordinates XCoordinate="775" YCoordinate="280" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2018-10-08T17:24:35.203776-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2018-10-08T17:24:35.203776-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'