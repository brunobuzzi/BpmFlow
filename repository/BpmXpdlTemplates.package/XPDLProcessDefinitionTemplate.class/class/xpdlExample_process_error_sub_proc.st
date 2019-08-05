error process sub proc
xpdlExample_process_error_sub_proc

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="008622db-28b2-499d-be91-2ff6d0c94077" Name="sub-proc" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2019-08-05T13:45:17.321718-03:00</Created>
    <ModificationDate>2019-08-05T16:06:54.5175112-03:00</ModificationDate>
    <Description>sub-proc</Description>
    <Documentation />
  </PackageHeader>
  <RedefinableHeader>
    <Author>Usuario</Author>
    <Version>1.0</Version>
    <Countrykey>CO</Countrykey>
  </RedefinableHeader>
  <ExternalPackages />
  <Pools>
    <Pool Id="dc94ec77-a150-4c03-8191-1275f0bdba82" Name="Main Process" Process="df566ded-947f-4335-af70-147fb3144e07" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="0" Width="0" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="0306a40b-b08b-4284-b2e3-86fc69722a26" Name="form-process" Process="5efa26c2-1998-4639-8b0a-1317f07fd7fd" BoundaryVisible="true">
      <Lanes>
        <Lane Id="809c5852-fb6f-45cc-ba21-f61d7b126c18" Name="chart-role" ParentPool="0306a40b-b08b-4284-b2e3-86fc69722a26">
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
    <WorkflowProcess Id="df566ded-947f-4335-af70-147fb3144e07" Name="Main Process">
      <ProcessHeader>
        <Created>2019-08-05T16:07:09.7174856-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-08-05T13:45:17.321718-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-08-05T13:45:17.321718-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="5efa26c2-1998-4639-8b0a-1317f07fd7fd" Name="form-process">
      <ProcessHeader>
        <Created>2019-08-05T16:07:09.7174856-03:00</Created>
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
        <Activity Id="dcafc9ce-189b-41b8-ae47-d8ccf598b9ed" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="149" YCoordinate="73" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="eaf81186-419b-48dd-8ca8-adf527c63364" Name="dashboard-form">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="121" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="283" YCoordinate="58" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="a2cca797-a3e7-4c82-919e-39e792938a83" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="328" YCoordinate="228" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="282a5dbd-3ecb-4f91-80ef-9a1739326a90" From="dcafc9ce-189b-41b8-ae47-d8ccf598b9ed" To="eaf81186-419b-48dd-8ca8-adf527c63364">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="179" YCoordinate="88" />
              <Coordinates XCoordinate="283" YCoordinate="88" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="97457a7d-4116-49bd-b4ff-f89316268802" From="eaf81186-419b-48dd-8ca8-adf527c63364" To="a2cca797-a3e7-4c82-919e-39e792938a83">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="343" YCoordinate="118" />
              <Coordinates XCoordinate="343" YCoordinate="228" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;form-process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-08-05T13:45:17.321718-03:00&quot;,&quot;description&quot;:&quot;&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-08-05T13:45:17.321718-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'