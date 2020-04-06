visa process
xpdlDefinition_home_office_check

^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="5acc2526-f142-4613-a3f0-e6816c2a8412" Name="home-office-check" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-03-21T12:00:22.4748017-03:00</Created>
    <ModificationDate>2016-04-09T19:15:27.0712491-03:00</ModificationDate>
    <Description>home-office-check</Description>
    <Documentation />
  </PackageHeader>
  <RedefinableHeader>
    <Author>Usuario</Author>
    <Version>1.0</Version>
    <Countrykey>CO</Countrykey>
  </RedefinableHeader>
  <ExternalPackages />
  <Pools>
    <Pool Id="bc97ff1d-5ee8-43a8-b77c-0b2fd548ad72" Name="Main Process" Process="da7905a7-8c92-4502-ab7d-d06de262576e" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="cae5762e-41f8-49ca-a259-33e8389abf9a" Name="home-office-check" Process="a5b187ab-0c31-47c8-85e8-48c6245bdc4e" BoundaryVisible="true">
      <Lanes>
        <Lane Id="9a6561aa-77a3-48da-9f16-0102e557fe31" Name="visa checker" ParentPool="cae5762e-41f8-49ca-a259-33e8389abf9a">
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
    <WorkflowProcess Id="da7905a7-8c92-4502-ab7d-d06de262576e" Name="Main Process">
      <ProcessHeader>
        <Created>2016-04-09T19:16:00.5066152-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-03-21T12:00:22.4758028-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-03-21T12:00:22.4758028-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="a5b187ab-0c31-47c8-85e8-48c6245bdc4e" Name="home-office-check">
      <ProcessHeader>
        <Created>2016-04-09T19:16:00.5066152-03:00</Created>
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
        <Activity Id="0a623a79-ffdf-4ee8-997a-01a528fc8109" Name="start visa check">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="161" YCoordinate="64" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="455042b2-7fd5-4406-b160-9a790fd7e7f9" Name="check-applicant-record">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="143" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="301.5" YCoordinate="49" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="previousFields" Value="citizenName citizenSurname originCountry citizenId" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="bed91f21-8ccf-4589-ac61-7722489ed00f" Name="end check">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="592" YCoordinate="61" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="0834aee4-d587-44fb-8a14-60f1c3c3d77b" Name="applicant-home-office-report">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="157" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="294.5" YCoordinate="189" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="previousFields" Value="citizenName citizenSurname originCountry citizenId" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="0928d715-c7e0-4585-aa2d-9ea4425e89a2" Name="check-financial-data">
          <Description />
          <Implementation>
            <SubFlow Id="cacbedc3-3bff-41d4-b4fd-6d8f76ae7b82" />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="562" YCoordinate="189" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;,&quot;multiInstancePropertyGuid&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;groupByAttributesXPathList&quot;:[]}" />
          </ExtendedAttributes>
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="c48e7ab0-09ac-43a4-985e-0f71ee38d5d6" From="0a623a79-ffdf-4ee8-997a-01a528fc8109" To="455042b2-7fd5-4406-b160-9a790fd7e7f9">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="191" YCoordinate="79" />
              <Coordinates XCoordinate="301" YCoordinate="79" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="5a391403-034a-4463-93d3-d651ab46519d" From="455042b2-7fd5-4406-b160-9a790fd7e7f9" To="0834aee4-d587-44fb-8a14-60f1c3c3d77b">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="372" YCoordinate="109" />
              <Coordinates XCoordinate="372" YCoordinate="189" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="faa7d768-bc1b-4404-b42c-ce80c58d62c5" From="0928d715-c7e0-4585-aa2d-9ea4425e89a2" To="bed91f21-8ccf-4589-ac61-7722489ed00f">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="607" YCoordinate="189" />
              <Coordinates XCoordinate="607" YCoordinate="91" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="55d03481-99b9-4d6c-988d-3c1ef9292fbe" From="0834aee4-d587-44fb-8a14-60f1c3c3d77b" To="0928d715-c7e0-4585-aa2d-9ea4425e89a2">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="451" YCoordinate="219" />
              <Coordinates XCoordinate="562" YCoordinate="219" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-03-21T12:00:22.4758028-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-03-21T12:00:22.4758028-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'