data entry multirole
processDefinition_data_entry

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="52f2d5be-3a8f-46a7-a7ec-32e318fa4331" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-04-01T13:14:34.9372935-03:00</Created>
    <ModificationDate>2016-04-01T14:01:47.602767-03:00</ModificationDate>
    <Description>Diagram 1</Description>
    <Documentation />
  </PackageHeader>
  <RedefinableHeader>
    <Author>Usuario</Author>
    <Version>1.0</Version>
    <Countrykey>CO</Countrykey>
  </RedefinableHeader>
  <ExternalPackages />
  <Participants>
    <Participant Id="8fdab7c9-f1d0-4003-b04a-2294e7ee9544" Name="data-entry-1">
      <ParticipantType Type="ROLE" />
      <Description />
      <ExtendedAttributes>
        <ExtendedAttribute Name="data-entry-1" />
      </ExtendedAttributes>
    </Participant>
    <Participant Id="fe86d584-df06-418a-89f7-760764555011" Name="data-entry-2">
      <ParticipantType Type="ROLE" />
      <Description />
      <ExtendedAttributes>
        <ExtendedAttribute Name="data-entry-2" />
      </ExtendedAttributes>
    </Participant>
    <Participant Id="862592f7-7bdf-4217-9697-6425acb8f048" Name="data-entry-3">
      <ParticipantType Type="ROLE" />
      <Description />
      <ExtendedAttributes>
        <ExtendedAttribute Name="data-entry-3" />
      </ExtendedAttributes>
    </Participant>
  </Participants>
  <Pools>
    <Pool Id="ffbda6fb-14c6-4c87-b8bf-0355b0718084" Name="Main Process" Process="8920aeb8-5d09-4025-be92-e57d1710b874" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="0" Width="0" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="916da080-1b71-457b-a5eb-702c8730156c" Name="multi-role" Process="43c27433-1a5d-4c9d-aa45-b8157f4c699c" BoundaryVisible="true">
      <Lanes>
        <Lane Id="a379f52b-2307-4c63-a218-e373397ddf94" Name="empry role" ParentPool="916da080-1b71-457b-a5eb-702c8730156c">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="149" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="6162a2b0-07fd-4811-b53b-36d5196493fb" Name="approver" ParentPool="916da080-1b71-457b-a5eb-702c8730156c">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="127" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="149" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="276" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="22" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="8920aeb8-5d09-4025-be92-e57d1710b874" Name="Main Process">
      <ProcessHeader>
        <Created>2016-04-01T14:07:23.633727-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-04-01T13:14:34.9462991-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-04-01T13:14:34.9462991-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="43c27433-1a5d-4c9d-aa45-b8157f4c699c" Name="multi-role">
      <ProcessHeader>
        <Created>2016-04-01T14:07:23.633727-03:00</Created>
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
        <Activity Id="e709aafd-7698-40c8-be44-df691a4c4cd4" Name="start multi role">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="163" YCoordinate="81" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="3160c981-3a84-4d94-b4a3-7956f60b80fe" Name="data-entry">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers>
            <Performer>8fdab7c9-f1d0-4003-b04a-2294e7ee9544</Performer>
            <Performer>fe86d584-df06-418a-89f7-760764555011</Performer>
            <Performer>862592f7-7bdf-4217-9697-6425acb8f048</Performer>
          </Performers>
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="336" YCoordinate="66" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="5da08d4b-30cc-44ed-8346-fde613c37a44" Name="data-approved">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="336" YCoordinate="206" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="dc3bafb9-7a6c-4655-8a7d-47239cbcee6a" Name="end multi role">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="600" YCoordinate="221" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="c45913e0-cc2c-4124-8203-47573a2ea4da" From="e709aafd-7698-40c8-be44-df691a4c4cd4" To="3160c981-3a84-4d94-b4a3-7956f60b80fe">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="193" YCoordinate="96" />
              <Coordinates XCoordinate="336" YCoordinate="96" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="6ab0937b-61fd-4e5d-96ca-58fdb1c75b38" From="3160c981-3a84-4d94-b4a3-7956f60b80fe" To="5da08d4b-30cc-44ed-8346-fde613c37a44">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="381" YCoordinate="126" />
              <Coordinates XCoordinate="381" YCoordinate="206" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="5dd472cf-eb39-4db7-b877-c008340e910b" From="5da08d4b-30cc-44ed-8346-fde613c37a44" To="dc3bafb9-7a6c-4655-8a7d-47239cbcee6a">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="426" YCoordinate="236" />
              <Coordinates XCoordinate="600" YCoordinate="236" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-04-01T13:14:34.9503018-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-04-01T13:14:34.9503018-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'