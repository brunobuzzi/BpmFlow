three level subprocesses
xpdlExample_ProcessFixIssue

^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="0021eafb-ce63-4827-95a8-99ed5cb45b56" Name="fix-issue" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2015-10-10T17:38:38.3889014-03:00</Created>
    <ModificationDate>2015-10-31T19:19:12.2006179-03:00</ModificationDate>
    <Description>fix-issue</Description>
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
    <Pool Id="2c171c41-a6aa-4f6e-a4f8-3faa2643d531" Name="Main Process" Process="4d900569-414f-48f1-9698-ba54a5c0bb96" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="7904a971-b4f0-4f66-9729-b5caff198eec" Name="fix-issue" Process="0f193f2e-eea8-4702-a3a9-f31ab3198aa3" BoundaryVisible="true">
      <Lanes>
        <Lane Id="f59dfcaa-4364-486a-b5c3-1523a2fa314c" Name="developer" ParentPool="7904a971-b4f0-4f66-9729-b5caff198eec">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="273" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="273" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <Associations />
  <Artifacts />
  <WorkflowProcesses>
    <WorkflowProcess Id="4d900569-414f-48f1-9698-ba54a5c0bb96" Name="Main Process">
      <ProcessHeader>
        <Created>2015-10-31T19:19:49.3915092-03:00</Created>
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
    <WorkflowProcess Id="0f193f2e-eea8-4702-a3a9-f31ab3198aa3" Name="fix-issue">
      <ProcessHeader>
        <Created>2015-10-31T19:19:49.3915092-03:00</Created>
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
        <Activity Id="ed05d89b-c585-4ad0-9f24-5dc655402749" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="143" YCoordinate="72" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="aa8093d3-1bc3-480a-acf8-4bcb6a14b6a5" Name="analyze-issue">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="276" YCoordinate="57" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="23110288-092a-4633-b6d3-aee28763cee4" Name="report-fixes">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="586" YCoordinate="57" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="10a9288f-4785-4e16-8bd1-1b25ec3071b3" Name="internal-test">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="586" YCoordinate="189" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="a7f0e8a9-c09a-4e21-860a-7ccbdc25cb9e" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="393" YCoordinate="204" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="70d89556-61a0-46a3-b9e9-f0536e1878d9" Name="report-to-architect">
          <Description />
          <Implementation>
            <SubFlow Id="260dacb0-875f-4db1-9346-4185528f1506" />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="147" YCoordinate="189" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;,&quot;multiInstancePropertyGuid&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;groupByAttributesXPath&quot;:&quot;&quot;}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="dfcd873a-20dc-483a-a5e4-08397387d383" Name="can fix">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="442" YCoordinate="67" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="7e6a750b-7e3a-4a39-8a88-ff7656eb6050" From="ed05d89b-c585-4ad0-9f24-5dc655402749" To="aa8093d3-1bc3-480a-acf8-4bcb6a14b6a5" Name="start-analyze">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="173" YCoordinate="87" />
              <Coordinates XCoordinate="276" YCoordinate="87" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="67005781-0b9d-4e38-b4a5-845d586c8f80" From="dfcd873a-20dc-483a-a5e4-08397387d383" To="23110288-092a-4633-b6d3-aee28763cee4" Name="create-report">
          <Condition Type="CONDITION">
            <Expression>[:form | form developerCanFix = ''yes'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="482" YCoordinate="87" />
              <Coordinates XCoordinate="586" YCoordinate="87" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="9bab740a-0def-470c-a558-b8a26861904a" From="23110288-092a-4633-b6d3-aee28763cee4" To="10a9288f-4785-4e16-8bd1-1b25ec3071b3" Name="do-internal-test">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="631" YCoordinate="117" />
              <Coordinates XCoordinate="631" YCoordinate="189" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="949f62da-2286-4e05-9bbb-e61a3ee957d3" From="10a9288f-4785-4e16-8bd1-1b25ec3071b3" To="a7f0e8a9-c09a-4e21-860a-7ccbdc25cb9e" Name="finish-internal-test">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="586" YCoordinate="219" />
              <Coordinates XCoordinate="423" YCoordinate="219" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="adbad26d-c890-4460-afb7-3d1637c1992e" From="dfcd873a-20dc-483a-a5e4-08397387d383" To="70d89556-61a0-46a3-b9e9-f0536e1878d9" Name="no-fix-report">
          <Condition Type="CONDITION">
            <Expression>[:form | form developerCanFix = ''no'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="462" YCoordinate="107" />
              <Coordinates XCoordinate="462" YCoordinate="148" />
              <Coordinates XCoordinate="192" YCoordinate="148" />
              <Coordinates XCoordinate="192" YCoordinate="189" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1903c236-7dab-4c63-a09d-7215c553f606" From="70d89556-61a0-46a3-b9e9-f0536e1878d9" To="a7f0e8a9-c09a-4e21-860a-7ccbdc25cb9e" Name="architect-done">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="237" YCoordinate="219" />
              <Coordinates XCoordinate="393" YCoordinate="219" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="f2eb6df7-93a9-4002-a2e9-13084c98e940" From="aa8093d3-1bc3-480a-acf8-4bcb6a14b6a5" To="dfcd873a-20dc-483a-a5e4-08397387d383" Name="evaluate-fix">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="366" YCoordinate="87" />
              <Coordinates XCoordinate="442" YCoordinate="87" />
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