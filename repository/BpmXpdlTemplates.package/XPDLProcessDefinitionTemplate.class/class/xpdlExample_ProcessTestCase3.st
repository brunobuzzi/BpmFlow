other
xpdlExample_ProcessTestCase3
	"With Seaside component <WaSeasideBpmIntegrationTestForm> and PERFORMERS"
^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="f9e1b674-bcb7-422c-9c50-49390d1e3cfb" Name="test-case" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2015-10-10T16:11:13.7791404-03:00</Created>
    <ModificationDate>2015-11-01T14:32:59.5172039-03:00</ModificationDate>
    <Description>test-case</Description>
    <Documentation />
  </PackageHeader>
  <RedefinableHeader>
    <Author>Usuario</Author>
    <Version>1.0</Version>
    <Countrykey>CO</Countrykey>
  </RedefinableHeader>
  <ExternalPackages />
  <Participants>
    <Participant Id="7e43ffdb-0cbc-479f-a59a-0457fb8ce275" Name="organizer">
      <ParticipantType Type="ROLE" />
      <Description />
      <ExtendedAttributes>
        <ExtendedAttribute Name="organizer" />
      </ExtendedAttributes>
    </Participant>
    <Participant Id="e6d17186-ba9d-4b01-8a53-bc607d9068e3" Name="automaticProcess">
      <ParticipantType Type="RESOURCE" />
      <Description />
      <ExtendedAttributes>
        <ExtendedAttribute Name="automaticProcess" />
      </ExtendedAttributes>
    </Participant>
  </Participants>
  <Pools>
    <Pool Id="b68fc2af-b6b7-4f25-aab5-dafe86796f0a" Name="Main Process" Process="71a0ff46-d937-49a6-ae0f-a14291afbe5d" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="80699622-c62b-4fa1-8464-570b9fdc95cf" Name="test-case-process" Process="5d349866-3f8e-432e-887e-eee94a0c66fb" BoundaryVisible="true">
      <Lanes>
        <Lane Id="08dc3675-c926-4e14-844b-d828d3cef9c2" Name="tester" ParentPool="80699622-c62b-4fa1-8464-570b9fdc95cf">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="141" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="5e7dbf23-6b47-4341-8abe-8fdecf2fc01a" Name="test-expert" ParentPool="80699622-c62b-4fa1-8464-570b9fdc95cf">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="135" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="141" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="13b461de-b265-412f-baa1-44ed46796f4a" Name="developer" ParentPool="80699622-c62b-4fa1-8464-570b9fdc95cf">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="120" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="276" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="396" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <Associations />
  <Artifacts />
  <WorkflowProcesses>
    <WorkflowProcess Id="71a0ff46-d937-49a6-ae0f-a14291afbe5d" Name="Main Process">
      <ProcessHeader>
        <Created>2015-11-01T14:33:17.5319269-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false},&quot;processProperties&quot;:{&quot;globalFormId&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;summaryFormId&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;mobileAccess&quot;:true}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="5d349866-3f8e-432e-887e-eee94a0c66fb" Name="test-case-process">
      <ProcessHeader>
        <Created>2015-11-01T14:33:17.5319269-03:00</Created>
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
        <Activity Id="a5c4f59b-8f98-4ee9-8bac-b7feaf8f9486" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="127" YCoordinate="224" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="61dd3bd2-cd44-49ec-9292-7dbb961d11a2" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="629" YCoordinate="210" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="bfebb4b0-96bf-4cc3-b0af-ee035a376ac7" Name="test-case" CompletionQuantity="5">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers>
            <Performer>e6d17186-ba9d-4b01-8a53-bc607d9068e3</Performer>
            <Performer>7e43ffdb-0cbc-479f-a59a-0457fb8ce275</Performer>
          </Performers>
          <Documentation />
          <Loop LoopType="Standard">
            <LoopStandard LoopCounter="0" LoopMaximum="0">
              <LoopCondition>[:form | form approved = ''false'']</LoopCondition>
            </LoopStandard>
          </Loop>
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="234" YCoordinate="209" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="caf25880-c312-4f57-b5d2-30a76003ec41" Name="test-ok">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="599" YCoordinate="54" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="e170b610-a543-438c-90ac-de6a6bb9d7e9" Name="execute-test" StartQuantity="2" CompletionQuantity="10">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="MultiInstance">
            <LoopMultiInstance LoopCounter="0" />
          </Loop>
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="234" YCoordinate="54" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="c2e6b767-63dc-4952-b137-614349439ae4" Name="analyze-issue-report" CompletionQuantity="9">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="MultiInstance">
            <LoopMultiInstance LoopCounter="0">
              <MI_Condition>[:form | form numberOfLoops]</MI_Condition>
            </LoopMultiInstance>
          </Loop>
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="378" YCoordinate="195" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="8d074c00-d99c-4975-93cc-79071176332a" Name="is-issue">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="455" YCoordinate="64" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="fdd455c5-d6cf-494f-bb9c-cf1aedea5d94" Name="fix-issue">
          <Description />
          <Implementation>
            <SubFlow Id="0f193f2e-eea8-4702-a3a9-f31ab3198aa3" />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="336" YCoordinate="336" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;,&quot;multiInstancePropertyGuid&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;groupByAttributesXPath&quot;:&quot;&quot;}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="2a43f725-58bd-45a8-b456-5da85c4faf32" Name="accept-issue">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="541" YCoordinate="243" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="f9d3a6e6-af6b-46dc-9fcc-c1c2f97b3271" From="a5c4f59b-8f98-4ee9-8bac-b7feaf8f9486" To="bfebb4b0-96bf-4cc3-b0af-ee035a376ac7" Name="start-case">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="157" YCoordinate="239" />
              <Coordinates XCoordinate="234" YCoordinate="239" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="04ee69b1-afd5-4e5c-ad2b-19c999c0b1b6" From="caf25880-c312-4f57-b5d2-30a76003ec41" To="61dd3bd2-cd44-49ec-9292-7dbb961d11a2" Name="test-finished">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="644" YCoordinate="114" />
              <Coordinates XCoordinate="644" YCoordinate="210" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="9137256c-6786-4850-b12d-2b8566694299" From="2a43f725-58bd-45a8-b456-5da85c4faf32" To="61dd3bd2-cd44-49ec-9292-7dbb961d11a2" Name="reject-issue">
          <Condition Type="CONDITION">
            <Expression>[:form | form acceptOrReject = ''reject'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="581" YCoordinate="263" />
              <Coordinates XCoordinate="605" YCoordinate="263" />
              <Coordinates XCoordinate="605" YCoordinate="225" />
              <Coordinates XCoordinate="629" YCoordinate="225" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="9575aef3-2919-455a-8179-2d9a86547aa3" From="2a43f725-58bd-45a8-b456-5da85c4faf32" To="fdd455c5-d6cf-494f-bb9c-cf1aedea5d94" Name="fix">
          <Condition Type="CONDITION">
            <Expression>[:form | form acceptOrReject = ''accept'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="561" YCoordinate="283" />
              <Coordinates XCoordinate="561" YCoordinate="366" />
              <Coordinates XCoordinate="426" YCoordinate="366" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="ec8c36e0-4ae6-4cc1-a5b6-4c459e63fb16" From="fdd455c5-d6cf-494f-bb9c-cf1aedea5d94" To="bfebb4b0-96bf-4cc3-b0af-ee035a376ac7" Name="test-again">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="336" YCoordinate="377" />
              <Coordinates XCoordinate="279" YCoordinate="377" />
              <Coordinates XCoordinate="279" YCoordinate="269" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="536e43b6-c876-4e84-846b-01b2efe43b8b" From="bfebb4b0-96bf-4cc3-b0af-ee035a376ac7" To="e170b610-a543-438c-90ac-de6a6bb9d7e9" Name="run-test" Quantity="5">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="279" YCoordinate="209" />
              <Coordinates XCoordinate="279" YCoordinate="114" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="9c75e177-6817-4c98-82b9-db9f481db34a" From="e170b610-a543-438c-90ac-de6a6bb9d7e9" To="8d074c00-d99c-4975-93cc-79071176332a" Name="evaluate-issue" Quantity="10">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="324" YCoordinate="84" />
              <Coordinates XCoordinate="455" YCoordinate="84" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="b432225c-69cb-4e5e-9da1-500917b1b7e4" From="8d074c00-d99c-4975-93cc-79071176332a" To="c2e6b767-63dc-4952-b137-614349439ae4" Name="report-issue">
          <Condition Type="CONDITION">
            <Expression>[:form | form result = ''failed'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="475" YCoordinate="104" />
              <Coordinates XCoordinate="475" YCoordinate="149.5" />
              <Coordinates XCoordinate="423" YCoordinate="149.5" />
              <Coordinates XCoordinate="423" YCoordinate="195" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="f50d67c8-61c2-45db-ad73-888d412e5704" From="8d074c00-d99c-4975-93cc-79071176332a" To="caf25880-c312-4f57-b5d2-30a76003ec41" Name="test-ok">
          <Condition Type="CONDITION">
            <Expression>[:form | form result ~= ''failed'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="495" YCoordinate="84" />
              <Coordinates XCoordinate="599" YCoordinate="84" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="be21efdb-ab66-4603-80ef-3867afd145b3" From="c2e6b767-63dc-4952-b137-614349439ae4" To="2a43f725-58bd-45a8-b456-5da85c4faf32" Name="evaluate-report" Quantity="9">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="468" YCoordinate="225" />
              <Coordinates XCoordinate="503" YCoordinate="225" />
              <Coordinates XCoordinate="503" YCoordinate="263" />
              <Coordinates XCoordinate="541" YCoordinate="263" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false},&quot;processProperties&quot;:{&quot;globalFormId&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;summaryFormId&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;mobileAccess&quot;:true}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'