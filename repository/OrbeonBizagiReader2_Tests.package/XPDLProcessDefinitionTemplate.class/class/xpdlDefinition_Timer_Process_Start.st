timer process
xpdlDefinition_Timer_Process_Start

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="af566964-bfdb-41f7-9a4d-d183ab07f183" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2017-03-05T12:11:30.7964825-03:00</Created>
    <ModificationDate>2017-07-31T08:55:12.5969241-03:00</ModificationDate>
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
    <Pool Id="bcc0800f-fabb-4a29-80dd-bf9f4f11705a" Name="Main Process" Process="e75ec3e2-d2b1-4332-b7ef-c4664186c88d" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="61d93c40-e922-454a-ba4a-5b761b3112b0" Name="timer-process-start" Process="691a183a-46e1-4168-978e-f288a183f498" BoundaryVisible="true">
      <Lanes>
        <Lane Id="4070c504-c494-416d-886d-bd63666a158d" Name="executer" ParentPool="61d93c40-e922-454a-ba4a-5b761b3112b0">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="263" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="263" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="e75ec3e2-d2b1-4332-b7ef-c4664186c88d" Name="Main Process">
      <ProcessHeader>
        <Created>2017-07-31T09:19:34.0805413-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2017-03-05T12:11:30.8134929-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2017-03-05T12:11:30.8134929-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="691a183a-46e1-4168-978e-f288a183f498" Name="timer-process-start">
      <ProcessHeader>
        <Created>2017-07-31T09:19:34.0805413-03:00</Created>
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
        <Activity Id="abe8d510-cebc-4da6-b660-5aa8df44ef5a" Name="alert_timer_script">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Timer" Target="b3efd02b-14a2-4bc3-8760-2eb8f64f4f4f" IsAttached="true">
              <TriggerTimer TimeDate="2017-03-05T00:00:00" />
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="22" Width="22" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="332" YCoordinate="120" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="activationBlock" Value="&lt;p style=&quot;text-align:left;text-indent:0pt;margin:0pt 0pt 0pt 0pt;&quot;&gt;&lt;span style=&quot;color:#000000;background-color:transparent;font-family:Segoe UI;font-size:8pt;font-weight:normal;font-style:normal;&quot;&gt;[:lastExecutedTime :currentTime | (lastExecutedTime addDays: 1) &amp;lt; currentTime ]&lt;/span&gt;&lt;/p&gt;" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="47aecb55-e3a9-4b7e-b431-dfbc742d161d" Name="alert_script">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:script :process |  | tempVar |script incrementVariableNamed: ''alert'' by: 1.]</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="287" YCoordinate="185" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="495b107d-be40-49e1-b60e-cc71947eee4a" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="494" YCoordinate="75" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="b3efd02b-14a2-4bc3-8760-2eb8f64f4f4f" Name="form_task1">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:script :process |  | tempVar |script incrementVariableNamed: ''cycle'' by: 1.]</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="287" YCoordinate="60" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="eaf4610e-b80c-4a60-b0d0-4b996a6e1ad4" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="Timer">
              <TriggerTimer TimeDate="2017-07-31T00:00:00" />
            </StartEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="155" YCoordinate="75" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;cost&quot;:0}" />
            <ExtendedAttribute Name="activationBlock" Value="&lt;p style=&quot;text-align:left;text-indent:0pt;margin:0pt 0pt 0pt 0pt;&quot;&gt;&lt;span style=&quot;color:#000000;background-color:transparent;font-family:Segoe UI;font-size:8pt;font-weight:normal;font-style:normal;&quot;&gt;[:lastExecutedTime :currentTime | (lastExecutedTime addDays: 1) &amp;lt; currentTime ]&lt;/span&gt;&lt;/p&gt;" />
          </ExtendedAttributes>
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="ddc35ddc-2228-4b5f-87f8-9830d7fc5b4a" From="eaf4610e-b80c-4a60-b0d0-4b996a6e1ad4" To="b3efd02b-14a2-4bc3-8760-2eb8f64f4f4f">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="185" YCoordinate="90" />
              <Coordinates XCoordinate="287" YCoordinate="90" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="dde39a03-77d7-43db-be51-75decc5ada5b" From="abe8d510-cebc-4da6-b660-5aa8df44ef5a" To="47aecb55-e3a9-4b7e-b431-dfbc742d161d">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="332" YCoordinate="120" />
              <Coordinates XCoordinate="332" YCoordinate="185" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="d544327e-cf7a-493a-9b66-4f526a56ed31" From="b3efd02b-14a2-4bc3-8760-2eb8f64f4f4f" To="495b107d-be40-49e1-b60e-cc71947eee4a">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="377" YCoordinate="90" />
              <Coordinates XCoordinate="494" YCoordinate="90" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2017-03-05T12:11:30.8533566-03:00&quot;,&quot;description&quot;:&quot;&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2017-03-05T12:11:30.8533566-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'