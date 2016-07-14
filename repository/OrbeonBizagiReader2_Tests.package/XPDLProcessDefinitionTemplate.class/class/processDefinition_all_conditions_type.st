all conditions type
processDefinition_all_conditions_type

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="8bb2bb08-e446-4337-8713-33248e1c6151" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-04-24T16:28:12.8062446-03:00</Created>
    <ModificationDate>2016-04-24T18:51:23.616824-03:00</ModificationDate>
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
    <Pool Id="b70b067d-2bbb-47d2-848f-d7497632b04d" Name="Main Process" Process="7916b74c-a178-4578-8fe6-fe0963062340" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="0" Width="0" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="0d00fa5e-c571-4a0d-aab2-73d9ea71e6c3" Name="all-type-conditions" Process="329ed66a-2b6e-4ecd-b789-51902f766847" BoundaryVisible="true">
      <Lanes>
        <Lane Id="508c5611-8170-4dd7-b23d-52a5c161633a" Name="runner" ParentPool="0d00fa5e-c571-4a0d-aab2-73d9ea71e6c3">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="7916b74c-a178-4578-8fe6-fe0963062340" Name="Main Process">
      <ProcessHeader>
        <Created>2016-04-24T18:51:40.9745613-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-04-24T16:28:12.807244-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-04-24T16:28:12.807244-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="329ed66a-2b6e-4ecd-b789-51902f766847" Name="all-type-conditions">
      <ProcessHeader>
        <Created>2016-04-24T18:51:40.9745613-03:00</Created>
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
        <Activity Id="1ccbd0e0-cf49-45ef-a132-868aa4811b3c" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="128" YCoordinate="62" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="a715571e-c7c2-413a-b596-fbac367d3e51" Name="all-field-types">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="247" YCoordinate="47" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="0e2ff68a-0e9b-47e6-be06-1e83c79033b0" Name="gateway split">
          <Description />
          <Route MarkerVisible="true" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="272" YCoordinate="157" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="83951997-e022-4561-a030-bf6ce468df1c" Name="integer end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="579" YCoordinate="65" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="6b82975d-1321-485f-9953-e70deaf49e6a" Name="boolean end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="123" YCoordinate="162" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="178f7468-5d12-47ac-9874-1c580ca4b512" Name="time end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="277" YCoordinate="320" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="92b0eab7-684b-4958-9f86-1ad8559c3ca3" Name="date end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="536" YCoordinate="309" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="22605c21-d5ae-4097-8090-80d55fd58337" Name="time stamp end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="122" YCoordinate="294" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="e1e0d091-2f5d-4331-b7d3-252b499662e9" Name="string end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="577" YCoordinate="162" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="c3b7fdea-e723-4a4f-8bcf-8cb4b19cfc2d" From="1ccbd0e0-cf49-45ef-a132-868aa4811b3c" To="a715571e-c7c2-413a-b596-fbac367d3e51">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="158" YCoordinate="77" />
              <Coordinates XCoordinate="247" YCoordinate="77" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="f5362b34-ebae-49db-97f7-0bcbc04f2e32" From="a715571e-c7c2-413a-b596-fbac367d3e51" To="0e2ff68a-0e9b-47e6-be06-1e83c79033b0">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="292" YCoordinate="107" />
              <Coordinates XCoordinate="292" YCoordinate="157" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="fac5ec5a-94c9-464a-a52b-902b2fed7975" From="0e2ff68a-0e9b-47e6-be06-1e83c79033b0" To="83951997-e022-4561-a030-bf6ce468df1c">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc amount = 10]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="312" YCoordinate="177" />
              <Coordinates XCoordinate="405" YCoordinate="177" />
              <Coordinates XCoordinate="405" YCoordinate="80" />
              <Coordinates XCoordinate="579" YCoordinate="80" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="8ab18d3f-cf6e-4681-a82a-363abd2c9e52" From="0e2ff68a-0e9b-47e6-be06-1e83c79033b0" To="6b82975d-1321-485f-9953-e70deaf49e6a">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc boolean]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="272" YCoordinate="177" />
              <Coordinates XCoordinate="153" YCoordinate="177" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="6855dba0-0b8f-4b88-8842-64e9feea60e2" From="0e2ff68a-0e9b-47e6-be06-1e83c79033b0" To="178f7468-5d12-47ac-9874-1c580ca4b512">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc time &lt; Time now]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="292" YCoordinate="197" />
              <Coordinates XCoordinate="292" YCoordinate="320" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="7f79be91-be31-4656-a4e1-660ed62f0aa9" From="0e2ff68a-0e9b-47e6-be06-1e83c79033b0" To="92b0eab7-684b-4958-9f86-1ad8559c3ca3">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc date &lt; Date today]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="312" YCoordinate="177" />
              <Coordinates XCoordinate="408" YCoordinate="177" />
              <Coordinates XCoordinate="408" YCoordinate="324" />
              <Coordinates XCoordinate="536" YCoordinate="324" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="fd601054-56e2-4a7c-9c62-cdb4fc71e322" From="0e2ff68a-0e9b-47e6-be06-1e83c79033b0" To="22605c21-d5ae-4097-8090-80d55fd58337">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc timeStamp &lt; TimeStamp now]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="292" YCoordinate="197" />
              <Coordinates XCoordinate="292" YCoordinate="245.5" />
              <Coordinates XCoordinate="137" YCoordinate="245.5" />
              <Coordinates XCoordinate="137" YCoordinate="294" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="400ebb71-f195-40b8-9e67-d3d73989f852" From="0e2ff68a-0e9b-47e6-be06-1e83c79033b0" To="e1e0d091-2f5d-4331-b7d3-252b499662e9">
          <Condition Type="CONDITION">
            <Expression>[:proc | (proc getValueOf: ''name'') = ''bruno'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="312" YCoordinate="177" />
              <Coordinates XCoordinate="577" YCoordinate="177" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-04-24T16:28:12.8077264-03:00&quot;,&quot;description&quot;:&quot;&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-04-24T16:28:12.8077264-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'