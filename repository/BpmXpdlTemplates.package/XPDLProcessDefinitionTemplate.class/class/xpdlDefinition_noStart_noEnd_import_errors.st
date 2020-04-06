import error
xpdlDefinition_noStart_noEnd_import_errors

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="9879ed25-393c-4f4a-b4ba-361d35eb7f7c" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2019-09-27T15:52:01.3083828-03:00</Created>
    <ModificationDate>2019-09-27T17:17:19.6717756-03:00</ModificationDate>
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
    <Pool Id="484b1d4e-b89e-464d-aa84-694152538e17" Name="Main Process" Process="b74be675-81ee-49ea-883d-7a195eb2adf2" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="0" Width="0" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="b898ab7d-a121-4416-8067-55e208ae7a7c" Name="" Process="4804ad18-465b-44e5-b28e-5c3ee2f4719b" BoundaryVisible="true">
      <Lanes>
        <Lane Id="2ea575b1-4ba6-4227-bafc-2a2a8da19d40" Name="" ParentPool="b898ab7d-a121-4416-8067-55e208ae7a7c">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="200" Width="760" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="2b5b6bc3-178e-47a9-bca6-ceaa98510836" Name="" ParentPool="b898ab7d-a121-4416-8067-55e208ae7a7c">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="264" Width="760" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="200" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="464" Width="810" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="52" YCoordinate="16" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="b74be675-81ee-49ea-883d-7a195eb2adf2" Name="Main Process">
      <ProcessHeader>
        <Created>2019-09-27T17:19:27.893271-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-09-27T15:52:01.8640924-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-09-27T15:52:01.8640924-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="4804ad18-465b-44e5-b28e-5c3ee2f4719b" Name="">
      <ProcessHeader>
        <Created>2019-09-27T17:19:27.8942725-03:00</Created>
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
        <Activity Id="259a75cf-8deb-49ba-a27e-2d4162b41b97" Name="no-orbeon-form">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="249" YCoordinate="57" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="1214a95e-0dcf-4a43-abd7-86560d630a98" Name="Task 1">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="508" YCoordinate="57" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="ce368fae-90a9-4ab8-b21c-448335b32c0f" Name="Task 2">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="520" YCoordinate="146" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="seasideComponent" Value="XXX" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="f2d597ab-47a0-4e7a-9609-71e781737905" Name="">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="249" YCoordinate="250" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="0d1d45b5-2218-4d5e-8be4-a79861a855a1" Name="">
          <Description />
          <Event>
            <IntermediateEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="415" YCoordinate="265" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;cost&quot;:0,&quot;priority&quot;:0}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="41ef81e7-8b77-44fd-baa7-e5e503da5d21" Name="Task 3">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="520" YCoordinate="250" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="4118c421-5d9e-4e98-ab89-529a6b612e9a" Name="Task 4">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="142" YCoordinate="146" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="67fc20ab-9008-4075-abe3-d20196b7f26e" Name="Task 5">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:proc :script | System deleteAll]</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="661" YCoordinate="250" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="a8192667-c05a-4f1a-abb5-1ef5f8b18e32" Name="">
          <Description />
          <Route MarkerVisible="true" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="274" YCoordinate="367" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f6dd346c-3df8-4f6c-9051-1411fc73cd73" Name="Task 6">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="339" YCoordinate="415" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="9b0de03d-547f-4cd9-b645-000394a0c6ea" Name="">
          <Description />
          <Route ExclusiveType="Event" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="686" YCoordinate="106" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="212dd1b2-1a36-45a5-a6ac-c5111bdc55ae" Name="Task 7">
          <Description />
          <Implementation>
            <Task>
              <TaskSend />
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="661" YCoordinate="367" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="6e6d27c0-aa80-4018-ab11-e6602571bca1" From="259a75cf-8deb-49ba-a27e-2d4162b41b97" To="1214a95e-0dcf-4a43-abd7-86560d630a98" Name="">
          <Condition Type="CONDITION">
            <Expression>[:process | process checkResult = ''ok'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="339" YCoordinate="87" />
              <Coordinates XCoordinate="508" YCoordinate="87" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="ac3d1b91-f1ae-40b8-85ff-329f79a38499" From="259a75cf-8deb-49ba-a27e-2d4162b41b97" To="ce368fae-90a9-4ab8-b21c-448335b32c0f">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="339" YCoordinate="87" />
              <Coordinates XCoordinate="429.5" YCoordinate="87" />
              <Coordinates XCoordinate="429.5" YCoordinate="176" />
              <Coordinates XCoordinate="520" YCoordinate="176" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="31db4b3c-d6d6-47ec-8f73-304eaf9573b1" From="259a75cf-8deb-49ba-a27e-2d4162b41b97" To="f2d597ab-47a0-4e7a-9609-71e781737905">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="294" YCoordinate="117" />
              <Coordinates XCoordinate="294" YCoordinate="250" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="2e30a4bc-3692-4d01-9957-6a11ffec1a81" From="f2d597ab-47a0-4e7a-9609-71e781737905" To="0d1d45b5-2218-4d5e-8be4-a79861a855a1">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="339" YCoordinate="280" />
              <Coordinates XCoordinate="415" YCoordinate="280" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="dec96516-759a-4c0f-a4f2-bc454400fc49" From="0d1d45b5-2218-4d5e-8be4-a79861a855a1" To="41ef81e7-8b77-44fd-baa7-e5e503da5d21" Name="">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="445" YCoordinate="280" />
              <Coordinates XCoordinate="520" YCoordinate="280" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="039fb4bc-f086-4c04-ba1c-49fbc9ff5bd1" From="41ef81e7-8b77-44fd-baa7-e5e503da5d21" To="67fc20ab-9008-4075-abe3-d20196b7f26e">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="610" YCoordinate="280" />
              <Coordinates XCoordinate="661" YCoordinate="280" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="476e6317-fc8e-43cb-9856-ae1d76375bf4" From="f2d597ab-47a0-4e7a-9609-71e781737905" To="a8192667-c05a-4f1a-abb5-1ef5f8b18e32">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="294" YCoordinate="310" />
              <Coordinates XCoordinate="294" YCoordinate="367" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="28cbe51d-fb40-40e6-b08e-6324848b6ce6" From="a8192667-c05a-4f1a-abb5-1ef5f8b18e32" To="41ef81e7-8b77-44fd-baa7-e5e503da5d21" Name="">
          <Condition Type="CONDITION">
            <Expression />
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="314" YCoordinate="387" />
              <Coordinates XCoordinate="565" YCoordinate="387" />
              <Coordinates XCoordinate="565" YCoordinate="310" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="86f1cadc-020c-4ecd-9c3d-bbdf6e69ab49" From="a8192667-c05a-4f1a-abb5-1ef5f8b18e32" To="f6dd346c-3df8-4f6c-9051-1411fc73cd73">
          <Condition Type="CONDITION">
            <Expression />
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="294" YCoordinate="407" />
              <Coordinates XCoordinate="294" YCoordinate="445" />
              <Coordinates XCoordinate="339" YCoordinate="445" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1a7adb24-8b9a-4483-be4f-48d45c00b81f" From="1214a95e-0dcf-4a43-abd7-86560d630a98" To="9b0de03d-547f-4cd9-b645-000394a0c6ea">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="598" YCoordinate="87" />
              <Coordinates XCoordinate="642" YCoordinate="87" />
              <Coordinates XCoordinate="642" YCoordinate="126" />
              <Coordinates XCoordinate="686" YCoordinate="126" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="f33080c7-a063-4b6b-9e71-e259280090c0" From="ce368fae-90a9-4ab8-b21c-448335b32c0f" To="9b0de03d-547f-4cd9-b645-000394a0c6ea">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="610" YCoordinate="176" />
              <Coordinates XCoordinate="648" YCoordinate="176" />
              <Coordinates XCoordinate="648" YCoordinate="126" />
              <Coordinates XCoordinate="686" YCoordinate="126" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="76598e76-b4ab-4873-9721-9c38d027df86" From="9b0de03d-547f-4cd9-b645-000394a0c6ea" To="67fc20ab-9008-4075-abe3-d20196b7f26e">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="706" YCoordinate="146" />
              <Coordinates XCoordinate="706" YCoordinate="250" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="0cdc9018-5740-4ff7-95d7-6832be6738a9" From="67fc20ab-9008-4075-abe3-d20196b7f26e" To="212dd1b2-1a36-45a5-a6ac-c5111bdc55ae">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="706" YCoordinate="310" />
              <Coordinates XCoordinate="706" YCoordinate="367" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-09-27T15:54:48.3409368-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-09-27T15:54:48.3409368-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'