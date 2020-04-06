three level subprocesses
xpdlDefinition_ProcessReportToArchitect

^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="1924f872-8d80-4df6-b416-1817b8f9c93c" Name="report-to-architect" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2015-10-10T17:42:36.4909979-03:00</Created>
    <ModificationDate>2015-10-31T19:19:12.394743-03:00</ModificationDate>
    <Description>report-to-architect</Description>
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
    <Pool Id="dd453389-40a7-400c-9a21-0bf48ad62b36" Name="Main Process" Process="cc08648d-6618-4fb6-881a-963de0172570" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="fcd24662-cac6-4f38-a675-690ed8bffb9c" Name="architect-process" Process="260dacb0-875f-4db1-9346-4185528f1506" BoundaryVisible="true">
      <Lanes>
        <Lane Id="9d014f82-8c80-4e75-b6a7-b403baa5174a" Name="architect" ParentPool="fcd24662-cac6-4f38-a675-690ed8bffb9c">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="282" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="282" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="26" YCoordinate="28" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <Associations />
  <Artifacts />
  <WorkflowProcesses>
    <WorkflowProcess Id="cc08648d-6618-4fb6-881a-963de0172570" Name="Main Process">
      <ProcessHeader>
        <Created>2015-10-31T19:19:49.4595538-03:00</Created>
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
    <WorkflowProcess Id="260dacb0-875f-4db1-9346-4185528f1506" Name="architect-process">
      <ProcessHeader>
        <Created>2015-10-31T19:19:49.4595538-03:00</Created>
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
        <Activity Id="893fce24-fb1a-4c0f-983b-54c10ff5a374" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="124" YCoordinate="77" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f091a68d-330f-416a-8055-3f54e9d30047" Name="analyze-developer-report">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="291" YCoordinate="62" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="53e7efda-1ff9-48c9-9957-5ddd98dcaff3" Name="has-solution">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="516" YCoordinate="72" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="b0250340-87e3-4475-82d1-c4f8ff9348aa" Name="report-solution">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="293" YCoordinate="233" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="9606869c-fa23-45e7-b1d6-142450b0a10a" Name="report-workaround">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="598" YCoordinate="137" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="b578fd82-c940-40a7-b6ab-9bb9d329d219" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="492" YCoordinate="248" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="74073e00-8b7c-43cb-837f-361aac53f568" From="893fce24-fb1a-4c0f-983b-54c10ff5a374" To="f091a68d-330f-416a-8055-3f54e9d30047" Name="start-dev-analysis">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="154" YCoordinate="92" />
              <Coordinates XCoordinate="291" YCoordinate="92" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1ecf8804-f7f5-4be3-9824-f7447e3f2101" From="f091a68d-330f-416a-8055-3f54e9d30047" To="53e7efda-1ff9-48c9-9957-5ddd98dcaff3" Name="evaluate-a-solution">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="381" YCoordinate="92" />
              <Coordinates XCoordinate="516" YCoordinate="92" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="e6c9a119-9c6b-4a30-b091-13520157cb0e" From="53e7efda-1ff9-48c9-9957-5ddd98dcaff3" To="b0250340-87e3-4475-82d1-c4f8ff9348aa" Name="create-solution">
          <Condition Type="CONDITION">
            <Expression>[:form | form hasSolution = ''yes'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="536" YCoordinate="112" />
              <Coordinates XCoordinate="536" YCoordinate="164.5" />
              <Coordinates XCoordinate="338" YCoordinate="164.5" />
              <Coordinates XCoordinate="338" YCoordinate="233" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1bdb9bbc-f85f-4ec8-bd0a-79050142f3cd" From="53e7efda-1ff9-48c9-9957-5ddd98dcaff3" To="9606869c-fa23-45e7-b1d6-142450b0a10a" Name="create-workaround">
          <Condition Type="CONDITION">
            <Expression>[:form | form hasSolution = ''no'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="556" YCoordinate="92" />
              <Coordinates XCoordinate="625" YCoordinate="92" />
              <Coordinates XCoordinate="625" YCoordinate="137" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="f63638f4-d2fb-404a-81da-ae30ceab2603" From="b0250340-87e3-4475-82d1-c4f8ff9348aa" To="b578fd82-c940-40a7-b6ab-9bb9d329d219" Name="end-solution">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="383" YCoordinate="263" />
              <Coordinates XCoordinate="492" YCoordinate="263" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="06887fd3-f3de-465c-a79c-d719d6cbaa08" From="9606869c-fa23-45e7-b1d6-142450b0a10a" To="b578fd82-c940-40a7-b6ab-9bb9d329d219" Name="end-workaround">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="643" YCoordinate="197" />
              <Coordinates XCoordinate="643" YCoordinate="263" />
              <Coordinates XCoordinate="522" YCoordinate="263" />
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