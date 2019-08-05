error process sub proc
xpdlExample_process_error_main_proc

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="cc417adf-3621-487e-9372-2956c8ae8742" Name="main-proc" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2019-07-25T18:00:53.1015816-03:00</Created>
    <ModificationDate>2019-08-05T16:06:54.5105065-03:00</ModificationDate>
    <Description>main-proc</Description>
    <Documentation />
  </PackageHeader>
  <RedefinableHeader>
    <Author>Usuario</Author>
    <Version>1.0</Version>
    <Countrykey>CO</Countrykey>
  </RedefinableHeader>
  <ExternalPackages />
  <Pools>
    <Pool Id="9883d42b-2be1-4b4e-a857-29534989b092" Name="Main Process" Process="ac5423b7-a2d6-4ccc-bf41-2e6acd06c38b" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="2d2df7cb-e619-46d7-9e3c-4ec411a12456" Name="dashboard-error-sub-proc" Process="64b4008e-fa32-4362-8126-aa9956d65c44" BoundaryVisible="true">
      <Lanes>
        <Lane Id="3ace14fd-c151-4345-a223-2b7836433c6a" Name="chart-role" ParentPool="2d2df7cb-e619-46d7-9e3c-4ec411a12456">
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
          <Coordinates XCoordinate="31" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="ac5423b7-a2d6-4ccc-bf41-2e6acd06c38b" Name="Main Process">
      <ProcessHeader>
        <Created>2019-08-05T16:07:09.7164845-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-07-25T18:00:53.3623049-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-07-25T18:00:53.3623049-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="64b4008e-fa32-4362-8126-aa9956d65c44" Name="dashboard-error-sub-proc">
      <ProcessHeader>
        <Created>2019-08-05T16:07:09.7164845-03:00</Created>
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
        <Activity Id="e84245f5-fb73-438e-97f8-65bb5eeed1b1" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="148" YCoordinate="93" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="71b5687e-cd5c-40e5-abe5-a57d54fab37c" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="587" YCoordinate="93" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f983d723-0b24-4566-820a-c0658443a5e2" Name="error-handler">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:script :process |script setVariableNamed: ''stamp'' withValue: TimeStamp now.].</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="412" YCoordinate="209" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="577eab98-75fe-43d0-ba7b-a569375547db" Name="sub-proc">
          <Description />
          <Implementation>
            <SubFlow Id="5efa26c2-1998-4639-8b0a-1317f07fd7fd" />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="272" YCoordinate="78" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="a7226fd7-bd05-4262-87fb-84ff2cf34698" Name="sub-proc-error">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Error" Target="577eab98-75fe-43d0-ba7b-a569375547db" IsAttached="true">
              <ResultError ErrorCode="" />
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="22" Width="22" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="282" YCoordinate="138" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="40232ae9-4403-4b0d-a83a-ddef3202e396" From="e84245f5-fb73-438e-97f8-65bb5eeed1b1" To="577eab98-75fe-43d0-ba7b-a569375547db">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="178" YCoordinate="108" />
              <Coordinates XCoordinate="272" YCoordinate="108" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="ed4770e4-0458-47ab-86a0-048d77b7376e" From="577eab98-75fe-43d0-ba7b-a569375547db" To="71b5687e-cd5c-40e5-abe5-a57d54fab37c">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="362" YCoordinate="108" />
              <Coordinates XCoordinate="587" YCoordinate="108" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="29bd4056-e8da-45e8-95b4-57021a942984" From="f983d723-0b24-4566-820a-c0658443a5e2" To="71b5687e-cd5c-40e5-abe5-a57d54fab37c">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="502" YCoordinate="239" />
              <Coordinates XCoordinate="602" YCoordinate="239" />
              <Coordinates XCoordinate="602" YCoordinate="123" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="384746f2-f56b-4845-a53b-e1a5787f2ff7" From="a7226fd7-bd05-4262-87fb-84ff2cf34698" To="f983d723-0b24-4566-820a-c0658443a5e2">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="282" YCoordinate="138" />
              <Coordinates XCoordinate="282" YCoordinate="239" />
              <Coordinates XCoordinate="412" YCoordinate="239" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;dashboard-error-sub-proc&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-07-25T18:00:53.411406-03:00&quot;,&quot;description&quot;:&quot;&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-07-25T18:00:53.411406-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'