simple registration
processDefinition_simple_registration

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="928591b1-254b-48bf-b8a5-1143e2f39f3b" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-03-30T19:55:34.2905721-03:00</Created>
    <ModificationDate>2018-02-05T14:47:27.3918237-03:00</ModificationDate>
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
    <Pool Id="bf80a638-e1da-46f5-a7fb-5506a1267897" Name="Main Process" Process="461bcfa3-952a-4d2e-958a-5ce873510e7c" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="c9a3f0bd-4ac5-4ea3-ba95-85ed4af2e55c" Name="Simple Registration" Process="7a40afc1-246e-45c3-a268-aadcec628a45" BoundaryVisible="true">
      <Lanes>
        <Lane Id="3081ae74-c7bb-468e-b905-a4e6234cc25b" Name="anonymous-user" ParentPool="c9a3f0bd-4ac5-4ea3-ba95-85ed4af2e55c">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="140" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="7ff06800-352b-4615-b547-4f3c5f0499c9" Name="approver" ParentPool="c9a3f0bd-4ac5-4ea3-ba95-85ed4af2e55c">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="154" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="140" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="294" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="31" YCoordinate="21" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="461bcfa3-952a-4d2e-958a-5ce873510e7c" Name="Main Process">
      <ProcessHeader>
        <Created>2018-02-05T14:48:08.1079998-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:0,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-03-30T19:55:34.2985775-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2016-03-30T19:55:34.2985775-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="7a40afc1-246e-45c3-a268-aadcec628a45" Name="Simple Registration">
      <ProcessHeader>
        <Created>2018-02-05T14:48:08.1090009-03:00</Created>
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
        <Activity Id="f41c9dc5-a211-4607-8ef4-bdf1a4c2ea4d" Name="simple-registration">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="352" YCoordinate="55" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="04668b75-4fa7-46bd-aa98-660b6170a299" Name="registration-approval">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="352" YCoordinate="205" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="5ec06ba7-aee0-47cc-8783-5777f107bb04" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="577" YCoordinate="220" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="67bcc06b-e76f-4c6f-b416-62a01c50bda7" Name="start-registration">
          <Description />
          <Event>
            <StartEvent Trigger="Message">
              <TriggerResultMessage>
                <Message Id="2afb4392-c450-46b5-9602-5fc3642bc47e" />
              </TriggerResultMessage>
            </StartEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="151" YCoordinate="70" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="fc77e949-7ffc-4f89-9b50-ccf43380b4c5" From="67bcc06b-e76f-4c6f-b416-62a01c50bda7" To="f41c9dc5-a211-4607-8ef4-bdf1a4c2ea4d">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="181" YCoordinate="85" />
              <Coordinates XCoordinate="352" YCoordinate="85" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="e62687d5-87d6-4355-82e7-34a20862c578" From="f41c9dc5-a211-4607-8ef4-bdf1a4c2ea4d" To="04668b75-4fa7-46bd-aa98-660b6170a299">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="397" YCoordinate="115" />
              <Coordinates XCoordinate="397" YCoordinate="205" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="0e7362b3-7c52-49f7-9895-b7242757bc70" From="04668b75-4fa7-46bd-aa98-660b6170a299" To="5ec06ba7-aee0-47cc-8783-5777f107bb04">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="442" YCoordinate="235" />
              <Coordinates XCoordinate="577" YCoordinate="235" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:0,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-03-30T19:55:34.3025802-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2016-03-30T19:55:34.3025802-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'