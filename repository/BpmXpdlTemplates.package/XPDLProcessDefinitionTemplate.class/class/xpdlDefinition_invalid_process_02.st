invalid processes
xpdlDefinition_invalid_process_02

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="ca513f57-a9e1-489c-bd6b-1c9ea8569afd" Name="Diagram 2" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2019-12-13T17:41:59.990321-03:00</Created>
    <ModificationDate>2019-12-13T17:45:00.5839997-03:00</ModificationDate>
    <Description>Diagram 2</Description>
    <Documentation />
  </PackageHeader>
  <RedefinableHeader>
    <Author>Usuario</Author>
    <Version>1.0</Version>
    <Countrykey>CO</Countrykey>
  </RedefinableHeader>
  <ExternalPackages />
  <Pools>
    <Pool Id="ac9ad190-ba90-4408-b96e-bbcfbd8a3850" Name="Main Process" Process="ec07dd64-247e-402a-9fdf-92c0ac6798c6" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="0" Width="0" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="287f94fc-5954-4288-a6d7-ef39d14cd0bf" Name="Process 1" Process="eb3fee7b-1373-49ca-ad7e-d1f44210473d" BoundaryVisible="true">
      <Lanes>
        <Lane Id="0870fd4c-80a7-409b-a643-4bf37c6d417f" Name="Lane 1" ParentPool="287f94fc-5954-4288-a6d7-ef39d14cd0bf">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="ec07dd64-247e-402a-9fdf-92c0ac6798c6" Name="Main Process">
      <ProcessHeader>
        <Created>2019-12-13T17:45:28.947454-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-12-13T17:41:59.990321-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-12-13T17:41:59.990321-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="eb3fee7b-1373-49ca-ad7e-d1f44210473d" Name="Process 1">
      <ProcessHeader>
        <Created>2019-12-13T17:45:28.947454-03:00</Created>
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
        <Activity Id="d038010c-d030-429f-b88e-2211cea446b9" Name="">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="213" YCoordinate="95" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="8b0bb1bb-e78b-4f7c-960e-262237b1dc5b" Name="form-34">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="338" YCoordinate="80" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="1e71e1b8-5d48-4fbc-981f-8e7c57ab9a69" Name="">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="530" YCoordinate="95" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="26315800-8565-4dff-b5e3-518f0d066519" From="d038010c-d030-429f-b88e-2211cea446b9" To="8b0bb1bb-e78b-4f7c-960e-262237b1dc5b">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="243" YCoordinate="110" />
              <Coordinates XCoordinate="338" YCoordinate="110" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="8829a14b-02c2-466d-ae3d-6b0a99cd3aba" From="8b0bb1bb-e78b-4f7c-960e-262237b1dc5b" To="1e71e1b8-5d48-4fbc-981f-8e7c57ab9a69">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="428" YCoordinate="110" />
              <Coordinates XCoordinate="530" YCoordinate="110" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Process 1&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-12-13T17:41:59.990321-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-12-13T17:41:59.990321-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'