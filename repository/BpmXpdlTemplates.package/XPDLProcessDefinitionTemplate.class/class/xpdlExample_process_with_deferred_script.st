script process
xpdlExample_process_with_deferred_script

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="2cc9f171-a9db-4116-a1a2-86957e38b63f" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-06-21T16:59:42.9321613-03:00</Created>
    <ModificationDate>2019-06-27T16:37:30.7390712-03:00</ModificationDate>
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
    <Pool Id="d95f408e-9738-492e-ab80-44c5cf77a491" Name="Main Process" Process="e9031899-fd8e-41eb-a9ca-adae6e78038e" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="5518f598-db18-437b-8208-f9a3ca257b19" Name="Process with Scripts" Process="ba47f6f1-66ed-4873-98f8-cbb947485f85" BoundaryVisible="true">
      <Lanes>
        <Lane Id="b04b321c-6fb5-4ac9-87e5-d34773e574d9" Name="manager" ParentPool="5518f598-db18-437b-8208-f9a3ca257b19">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="260" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="260" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="e9031899-fd8e-41eb-a9ca-adae6e78038e" Name="Main Process">
      <ProcessHeader>
        <Created>2019-06-27T16:37:39.853959-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:0,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-06-21T16:59:42.9501883-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2016-06-21T16:59:42.9501883-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="ba47f6f1-66ed-4873-98f8-cbb947485f85" Name="Process with Scripts">
      <ProcessHeader>
        <Created>2019-06-27T16:37:39.853959-03:00</Created>
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
        <Activity Id="2734b747-67de-41a7-972f-1719325d357f" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="153" YCoordinate="70" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="7ef89a98-ff30-4fe3-acd4-295afd6589d5" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="290" YCoordinate="200" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="7502145a-2597-457c-8024-2730c37a8b64" Name="script">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:script :process |    Smalltalk at: #Test_Temps put: process.   script setVariableNamed: ''myTempVar'' withValue: 64].</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="260" YCoordinate="55" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="runOnBackground" Value="true" />
          </ExtendedAttributes>
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="f9209be5-f2d5-4aba-808f-f793a98e2699" From="2734b747-67de-41a7-972f-1719325d357f" To="7502145a-2597-457c-8024-2730c37a8b64">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="183" YCoordinate="85" />
              <Coordinates XCoordinate="260" YCoordinate="85" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="8497eb4e-7425-4b72-9bc3-f5ddb4f34c83" From="7502145a-2597-457c-8024-2730c37a8b64" To="7ef89a98-ff30-4fe3-acd4-295afd6589d5">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="305" YCoordinate="115" />
              <Coordinates XCoordinate="305" YCoordinate="200" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:0,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-06-21T16:59:42.9763742-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2016-06-21T16:59:42.9763742-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'