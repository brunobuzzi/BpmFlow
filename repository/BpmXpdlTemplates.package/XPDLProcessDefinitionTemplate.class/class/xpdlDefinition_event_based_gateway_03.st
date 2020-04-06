event based gateway
xpdlDefinition_event_based_gateway_03

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="0027ccd4-50e6-419a-a22e-8ca4b5f9fb3c" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2018-10-08T17:24:35.1606708-03:00</Created>
    <ModificationDate>2018-10-29T17:23:52.8422069-03:00</ModificationDate>
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
    <Pool Id="c0fda1d4-bb4d-4c09-a3bc-6d5d5d89bea4" Name="House Purchase with Loan 3" Process="9da9e006-e9ef-4c89-a5cb-8ad0919ec269" BoundaryVisible="true">
      <Lanes>
        <Lane Id="0271d506-1e4f-4ea6-be93-dc3c7cdd6b4c" Name="applicant" ParentPool="c0fda1d4-bb4d-4c09-a3bc-6d5d5d89bea4">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="182" Width="733" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="051fafad-ac60-40fc-bf7b-446428401bd1" Name="seller" ParentPool="c0fda1d4-bb4d-4c09-a3bc-6d5d5d89bea4">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="196" Width="733" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="182" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="378" Width="783" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="34" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="3e6f0528-cc7c-4204-951b-4f21ffb91cf4" Name="House Loan 3" Process="865c6773-20c9-47f1-ab37-f8102cf635a7" BoundaryVisible="true">
      <Lanes>
        <Lane Id="ce501c53-4227-4179-9a01-e7cadeeb17c3" Name="applicant" ParentPool="3e6f0528-cc7c-4204-951b-4f21ffb91cf4">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="154" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="6c5b5f60-a83b-4671-a88b-ca01aabff888" Name="loan approver" ParentPool="3e6f0528-cc7c-4204-951b-4f21ffb91cf4">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="142" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="154" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="296" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="20" YCoordinate="446" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="63589e99-86c4-4321-b9e8-4fb82dd5f22b" Name="Main Process">
      <ProcessHeader>
        <Created>2018-10-29T17:24:02.6929858-03:00</Created>
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
    <WorkflowProcess Id="9da9e006-e9ef-4c89-a5cb-8ad0919ec269" Name="House Purchase with Loan 3">
      <ProcessHeader>
        <Created>2018-10-29T17:24:02.6929858-03:00</Created>
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
              <Coordinates XCoordinate="125" YCoordinate="54" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="5ece73b3-807c-4fd8-9e16-cf6c54f87c66" Name="house-purchase-application">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="161" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="204" YCoordinate="39" />
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
              <Coordinates XCoordinate="615" YCoordinate="54" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;cost&quot;:0}" />
            <ExtendedAttribute Name="activationBlock" Value="[:lastExecutedTime :currentTime :process | (lastExecutedTime addDays: 1) &lt;= currentTime]" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="107d8111-55a2-476d-95b9-93ed54dc1a24" Name="loan message">
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
              <Coordinates XCoordinate="199" YCoordinate="164" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="d2a4bdcb-9b90-45b7-9306-b4ae93d49792" Name="cancel-purchase">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="134" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="563" YCoordinate="241" />
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
              <Coordinates XCoordinate="754" YCoordinate="361" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="6dffe2db-f43a-447d-89ca-2a21a8322e44" Name="proceed-purchase">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="156" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="354" YCoordinate="346" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="027f8bc9-274d-4c0c-abc2-10a9f707b82f" Name="loan approved">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="194" YCoordinate="251" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="a64d3f3f-bad4-4a40-8c95-7971af737bd0" Name="loan event">
          <Description />
          <Route GatewayType="Parallel" Instantiate="true" ParallelEventBased="true" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="438" YCoordinate="49" />
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
              <Coordinates XCoordinate="155" YCoordinate="69" />
              <Coordinates XCoordinate="204" YCoordinate="69" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="be1f1ec0-c562-487b-9195-8f6d90777dc1" From="5ece73b3-807c-4fd8-9e16-cf6c54f87c66" To="a64d3f3f-bad4-4a40-8c95-7971af737bd0">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="365" YCoordinate="69" />
              <Coordinates XCoordinate="438" YCoordinate="69" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1b2296ac-69b3-450a-a652-cbbf92b4d937" From="a64d3f3f-bad4-4a40-8c95-7971af737bd0" To="107d8111-55a2-476d-95b9-93ed54dc1a24">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="458" YCoordinate="89" />
              <Coordinates XCoordinate="458" YCoordinate="126.5" />
              <Coordinates XCoordinate="214" YCoordinate="126.5" />
              <Coordinates XCoordinate="214" YCoordinate="164" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1664f084-de75-4599-885e-22475181d52d" From="a64d3f3f-bad4-4a40-8c95-7971af737bd0" To="a94f499e-cde3-4bc6-a3cb-ea42a14d4f8d">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="478" YCoordinate="69" />
              <Coordinates XCoordinate="615" YCoordinate="69" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="c6697bed-f9d0-44f1-ab87-64651f8f0cea" From="a94f499e-cde3-4bc6-a3cb-ea42a14d4f8d" To="d2a4bdcb-9b90-45b7-9306-b4ae93d49792">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="630" YCoordinate="84" />
              <Coordinates XCoordinate="630" YCoordinate="241" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="7c89adf1-94d7-4fde-96ae-4613091c752a" From="d2a4bdcb-9b90-45b7-9306-b4ae93d49792" To="f277c196-1cc6-4e5f-886d-75ea1b658c22">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="697" YCoordinate="271" />
              <Coordinates XCoordinate="769" YCoordinate="271" />
              <Coordinates XCoordinate="769" YCoordinate="361" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="489b35db-033a-424d-bac2-fee5bd20f8d8" From="6dffe2db-f43a-447d-89ca-2a21a8322e44" To="f277c196-1cc6-4e5f-886d-75ea1b658c22">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="510" YCoordinate="376" />
              <Coordinates XCoordinate="754" YCoordinate="376" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="89bf26ab-f5e0-4494-9367-ab38e74cfe70" From="107d8111-55a2-476d-95b9-93ed54dc1a24" To="027f8bc9-274d-4c0c-abc2-10a9f707b82f">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="214" YCoordinate="194" />
              <Coordinates XCoordinate="214" YCoordinate="251" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="0ed8f93f-7150-4782-96d6-abac84b221e7" From="027f8bc9-274d-4c0c-abc2-10a9f707b82f" To="d2a4bdcb-9b90-45b7-9306-b4ae93d49792">
          <Condition Type="CONDITION">
            <Expression>[:process | process loanApproved not]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="234" YCoordinate="271" />
              <Coordinates XCoordinate="563" YCoordinate="271" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="dc52cdf5-9df9-4f41-b0c4-2e021690f042" From="027f8bc9-274d-4c0c-abc2-10a9f707b82f" To="6dffe2db-f43a-447d-89ca-2a21a8322e44">
          <Condition Type="CONDITION">
            <Expression>[:process | process loanApproved]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="234" YCoordinate="271" />
              <Coordinates XCoordinate="318.5" YCoordinate="271" />
              <Coordinates XCoordinate="318.5" YCoordinate="376" />
              <Coordinates XCoordinate="354" YCoordinate="376" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2018-10-08T17:24:35.203776-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2018-10-08T17:24:35.203776-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="865c6773-20c9-47f1-ab37-f8102cf635a7" Name="House Loan 3">
      <ProcessHeader>
        <Created>2018-10-29T17:24:02.6939869-03:00</Created>
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
        <Activity Id="67cf0be0-3244-4f3f-93a2-f80f53b060a2" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="123" YCoordinate="502" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="dafcd6b0-66d6-4828-973a-ae2da325a3ef" Name="loan-application">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="141" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="223" YCoordinate="487" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="9f44fce9-6ea4-43d3-97cf-f54b95df3f1f" Name="study-loan-application">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="137" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="225" YCoordinate="627" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="a6619c97-6f78-4578-b302-5718cadf77a2" Name="communicate-purchase-process">
          <Description />
          <Implementation>
            <Task>
              <TaskSend />
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="151" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="429" YCoordinate="627" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="applicationName" Value="ue" />
            <ExtendedAttribute Name="processName" Value="House Purchase with Loan 3" />
            <ExtendedAttribute Name="gatewayName" Value="loan event" />
            <ExtendedAttribute Name="eventName" Value="loan message" />
            <ExtendedAttribute Name="processIdField" Value="purchaseProcessId" />
            <ExtendedAttribute Name="identificationFields" Value="" />
            <ExtendedAttribute Name="fieldNamesToSet" Value="loanApproved" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="b868ad0a-59cd-49b3-97e2-46d7b2850813" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="644" YCoordinate="642" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="693bb9de-c8dc-4ea3-b24c-29ea37d10f0d" From="67cf0be0-3244-4f3f-93a2-f80f53b060a2" To="dafcd6b0-66d6-4828-973a-ae2da325a3ef">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="153" YCoordinate="517" />
              <Coordinates XCoordinate="223" YCoordinate="517" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="10a2a7f9-f6a6-42fe-8ff5-13674769d0c5" From="dafcd6b0-66d6-4828-973a-ae2da325a3ef" To="9f44fce9-6ea4-43d3-97cf-f54b95df3f1f">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="293" YCoordinate="547" />
              <Coordinates XCoordinate="293" YCoordinate="627" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="39c0159a-dcbc-416b-b04a-62446a1bed4f" From="9f44fce9-6ea4-43d3-97cf-f54b95df3f1f" To="a6619c97-6f78-4578-b302-5718cadf77a2">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="362" YCoordinate="657" />
              <Coordinates XCoordinate="429" YCoordinate="657" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="aa2194b2-e11f-4fd0-80b4-a82b64b9e363" From="a6619c97-6f78-4578-b302-5718cadf77a2" To="b868ad0a-59cd-49b3-97e2-46d7b2850813">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="580" YCoordinate="657" />
              <Coordinates XCoordinate="644" YCoordinate="657" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2018-10-19T16:21:54.3233913-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2018-10-19T16:21:54.3233913-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'