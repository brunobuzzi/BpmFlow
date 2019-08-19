enter data recursive
xpdlExample_Enter_Recursive_Data

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="d653670a-f36d-4427-a7e7-6ff2fa8b1851" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-09-05T13:18:43.8746068-03:00</Created>
    <ModificationDate>2019-08-19T18:07:08.0233591-03:00</ModificationDate>
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
    <Pool Id="f44694cd-9588-4c68-aafe-d6087917ec64" Name="Main Process" Process="7dbb9474-faa4-4135-9303-ece2e47e9942" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="c5db94c8-5087-414a-9a16-45ecc9713795" Name="recursive-data" Process="30d468d9-2ffe-4770-9d71-f2f463ef97fe" BoundaryVisible="true">
      <Lanes>
        <Lane Id="eed38e68-cf79-4252-be29-717d4c1c2428" Name="typist" ParentPool="c5db94c8-5087-414a-9a16-45ecc9713795">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="197" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="bb121243-e454-4dbf-b5ab-a079e1b26a68" Name="approver" ParentPool="c5db94c8-5087-414a-9a16-45ecc9713795">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="200" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="197" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="397" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="32" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="7dbb9474-faa4-4135-9303-ece2e47e9942" Name="Main Process">
      <ProcessHeader>
        <Created>2019-08-19T18:07:26.8947398-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:0,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-09-05T13:18:43.9421319-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2016-09-05T13:18:43.9421319-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="30d468d9-2ffe-4770-9d71-f2f463ef97fe" Name="recursive-data">
      <ProcessHeader>
        <Created>2019-08-19T18:07:26.8947398-03:00</Created>
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
        <Activity Id="1c2dec52-343c-4d83-8b2a-42cfdef7c80d" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="169" YCoordinate="126" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="dcffb926-04e0-4d5d-ad89-b6ac1583662d" Name="enter-data-recursive">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="126" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="328" YCoordinate="111" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="23f59b36-0b09-4c0f-8908-48428741249b" Name="approve-data-recursive">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="133" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="324" YCoordinate="284" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="0c2d2e83-66c7-4dec-87f4-67f572f23d9b" Name="approved?">
          <Description />
          <Route MarkerVisible="true" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="567" YCoordinate="294" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="5b01ee03-efcd-4253-b032-f2dd12c4cdc6" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="668" YCoordinate="299" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="0d2ce32c-5289-4608-83c1-2c727db44a26" From="1c2dec52-343c-4d83-8b2a-42cfdef7c80d" To="dcffb926-04e0-4d5d-ad89-b6ac1583662d">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="199" YCoordinate="141" />
              <Coordinates XCoordinate="328" YCoordinate="141" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="90d97b9e-f735-4ecc-8cbc-6d474f9f488f" From="dcffb926-04e0-4d5d-ad89-b6ac1583662d" To="23f59b36-0b09-4c0f-8908-48428741249b">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="391" YCoordinate="171" />
              <Coordinates XCoordinate="391" YCoordinate="227.5" />
              <Coordinates XCoordinate="390" YCoordinate="227.5" />
              <Coordinates XCoordinate="390" YCoordinate="284" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="dedcdf56-6f62-458c-8f56-3c7e1bd49d81" From="23f59b36-0b09-4c0f-8908-48428741249b" To="0c2d2e83-66c7-4dec-87f4-67f572f23d9b">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="457" YCoordinate="314" />
              <Coordinates XCoordinate="567" YCoordinate="314" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="ad841c50-04fd-4b7e-8683-cf4b20632f2b" From="0c2d2e83-66c7-4dec-87f4-67f572f23d9b" To="5b01ee03-efcd-4253-b032-f2dd12c4cdc6" Name="">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc approved]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="607" YCoordinate="314" />
              <Coordinates XCoordinate="668" YCoordinate="314" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="bcaa612e-0854-4abb-b958-601bbf7ecb21" From="0c2d2e83-66c7-4dec-87f4-67f572f23d9b" To="dcffb926-04e0-4d5d-ad89-b6ac1583662d">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc approved not]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="587" YCoordinate="294" />
              <Coordinates XCoordinate="587" YCoordinate="141" />
              <Coordinates XCoordinate="454" YCoordinate="141" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:0,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-09-05T13:18:43.9691476-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2016-09-05T13:18:43.9691476-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'