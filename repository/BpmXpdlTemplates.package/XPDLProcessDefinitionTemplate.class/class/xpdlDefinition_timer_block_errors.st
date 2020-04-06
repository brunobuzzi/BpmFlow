import error
xpdlDefinition_timer_block_errors

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="d71c7923-5d06-4964-a53e-bdedf08f09b0" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2019-09-30T16:25:29.6551764-03:00</Created>
    <ModificationDate>2019-09-30T18:30:27.3017855-03:00</ModificationDate>
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
    <Pool Id="cea4ad66-43b0-443d-a40f-89ee4143fcc5" Name="Main Process" Process="d05271b5-a891-4548-9888-4d6c92d849b9" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="cf3b27bb-5d44-4359-b99a-6f11d6b667e8" Name="Process 123" Process="b5ff4cbc-888a-4134-b78b-f538324619f4" BoundaryVisible="true">
      <Lanes>
        <Lane Id="eb990ab8-196a-49de-b683-2f0a7fff4c85" Name="Lane 1" ParentPool="cf3b27bb-5d44-4359-b99a-6f11d6b667e8">
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
    <WorkflowProcess Id="d05271b5-a891-4548-9888-4d6c92d849b9" Name="Main Process">
      <ProcessHeader>
        <Created>2019-09-30T18:30:55.7273532-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-09-30T16:25:29.6561788-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-09-30T16:25:29.6561788-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="b5ff4cbc-888a-4134-b78b-f538324619f4" Name="Process 123">
      <ProcessHeader>
        <Created>2019-09-30T18:30:55.728353-03:00</Created>
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
        <Activity Id="01778813-ef78-4f37-9bf7-cb795a7844bb" Name="Task 1">
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
              <Coordinates XCoordinate="284" YCoordinate="110" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="c7b87a7a-3c6f-4fd6-919f-5ee84770d675" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="498" YCoordinate="234" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="4e019edc-15b1-4624-9e97-597b04b91372" Name="block 1">
          <Description />
          <Event>
            <IntermediateEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="498" YCoordinate="125" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;cost&quot;:0,&quot;priority&quot;:0}" />
            <ExtendedAttribute Name="asdf" Value="" />
            <ExtendedAttribute Name="activationBlock" Value="[:astET :proc | proc time &gt; 4]" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="ba019dcb-f3dc-475b-85de-290f0db275ed" Name="block 2">
          <Description />
          <Event>
            <IntermediateEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="314" YCoordinate="234" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;cost&quot;:0,&quot;priority&quot;:0}" />
            <ExtendedAttribute Name="asdf" Value="" />
            <ExtendedAttribute Name="activationBlock" Value="" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="2ef70e3d-0a0e-4391-8e41-8fdc68a0f065" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="Timer">
              <TriggerTimer TimeDate="2019-09-30T00:00:00" />
            </StartEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="163" YCoordinate="125" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;cost&quot;:0}" />
            <ExtendedAttribute Name="activationBlock" Value="[:astET | proc time &gt; 4]" />
          </ExtendedAttributes>
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="56df915f-8bbe-4d9e-9d3c-5b9f83ffc605" From="2ef70e3d-0a0e-4391-8e41-8fdc68a0f065" To="01778813-ef78-4f37-9bf7-cb795a7844bb">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="193" YCoordinate="140" />
              <Coordinates XCoordinate="284" YCoordinate="140" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1d3d08ab-5750-4456-806a-1742e2768183" From="01778813-ef78-4f37-9bf7-cb795a7844bb" To="4e019edc-15b1-4624-9e97-597b04b91372">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="374" YCoordinate="140" />
              <Coordinates XCoordinate="498" YCoordinate="140" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="cb2f01a1-90d4-4c58-8c12-328aa9dd0a7e" From="4e019edc-15b1-4624-9e97-597b04b91372" To="c7b87a7a-3c6f-4fd6-919f-5ee84770d675">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="513" YCoordinate="155" />
              <Coordinates XCoordinate="513" YCoordinate="234" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="dd2ed804-1b6d-4364-992b-362105aa4f4c" From="01778813-ef78-4f37-9bf7-cb795a7844bb" To="ba019dcb-f3dc-475b-85de-290f0db275ed">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="329" YCoordinate="170" />
              <Coordinates XCoordinate="329" YCoordinate="234" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="ccfeae92-5991-4b3a-9189-d4dc5277f7a9" From="ba019dcb-f3dc-475b-85de-290f0db275ed" To="c7b87a7a-3c6f-4fd6-919f-5ee84770d675">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="344" YCoordinate="249" />
              <Coordinates XCoordinate="498" YCoordinate="249" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Process 123&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-09-30T16:25:29.6561788-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-09-30T16:25:29.6561788-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'