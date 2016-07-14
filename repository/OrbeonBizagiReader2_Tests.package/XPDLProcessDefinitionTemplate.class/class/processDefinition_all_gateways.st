all gateways process
processDefinition_all_gateways

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="7bc7c43d-4b10-4f26-a903-e4da386d3ac3" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-04-07T18:01:00.808143-03:00</Created>
    <ModificationDate>2016-04-24T14:16:15.379809-03:00</ModificationDate>
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
    <Pool Id="81fb5177-be22-4742-9bff-635a215ee440" Name="Main Process" Process="8d616f05-a39a-4e21-87ae-35df54ad21a7" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="c33fc697-3940-48c8-82b9-145fbcd0b9a0" Name="all gateways" Process="d6aa89da-947d-4414-bb53-9681b11f9090" BoundaryVisible="true">
      <Lanes>
        <Lane Id="9e273b63-e027-4d1c-8ff3-518f5f4368a7" Name="manager" ParentPool="c33fc697-3940-48c8-82b9-145fbcd0b9a0">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="485" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="485" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="8d616f05-a39a-4e21-87ae-35df54ad21a7" Name="Main Process">
      <ProcessHeader>
        <Created>2016-04-24T14:16:52.5285128-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-04-07T18:01:00.8092249-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-04-07T18:01:00.8092249-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="d6aa89da-947d-4414-bb53-9681b11f9090" Name="all gateways">
      <ProcessHeader>
        <Created>2016-04-24T14:16:52.5285128-03:00</Created>
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
        <Activity Id="aceaa8f0-0ab7-48ba-b8bb-0150c2b0a5ba" Name="start all">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="124" YCoordinate="62" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="a26d692e-9159-47bd-9ff3-8b95096a5373" Name="task-1">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="240" YCoordinate="47" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="930dc0f3-6fe1-4a34-9128-3d207b60167c" Name="task-2">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="402" YCoordinate="144" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="e903e7be-d1d4-4e6f-8202-819d2b4f00fb" Name="task-3">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="565" YCoordinate="47" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="64fb3a51-29b5-4ed9-9efd-63525728cbe9" Name="split 2 and 3">
          <Description />
          <Route GatewayType="Parallel" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="427" YCoordinate="57" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="a1c9f383-4dfa-4e5d-92ca-00c1a2faa5d3" Name="merge 2 and 3">
          <Description />
          <Route GatewayType="Parallel" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="590" YCoordinate="154" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="4740c11f-ca4e-4fc3-9112-610432776721" Name="task 4 or 5">
          <Description />
          <Route MarkerVisible="true" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="590" YCoordinate="242" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="1a278e1d-ce1e-43ad-9e14-778de81c7095" Name="task-4">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="394" YCoordinate="232" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="eb735563-e1e0-4118-ad97-1a4f6a7ec5b8" Name="task-5">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="565" YCoordinate="332" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f40ff916-4532-4d2a-9e45-e81559284513" Name="task-6">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="394" YCoordinate="332" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f1f00093-2bbb-45ac-867a-398961a2a081" Name="split last">
          <Description />
          <Route GatewayType="Inclusive" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="274" YCoordinate="342" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="c7900244-a9ce-48a0-9a6f-7cc024de4baa" Name="task-7">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="141" YCoordinate="332" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="3e844979-e36d-4bfb-9d4e-a7b3130f6227" Name="end all">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="279" YCoordinate="453" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="c76945c6-40bc-4b33-8e9a-ced9b7f77c96" From="aceaa8f0-0ab7-48ba-b8bb-0150c2b0a5ba" To="a26d692e-9159-47bd-9ff3-8b95096a5373">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="154" YCoordinate="77" />
              <Coordinates XCoordinate="240" YCoordinate="77" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="3cf0c3c9-7b91-47b8-86fd-320279ff9390" From="a26d692e-9159-47bd-9ff3-8b95096a5373" To="64fb3a51-29b5-4ed9-9efd-63525728cbe9">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="330" YCoordinate="77" />
              <Coordinates XCoordinate="427" YCoordinate="77" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="0831f13d-ffd8-4de1-909a-7d1f4724af77" From="64fb3a51-29b5-4ed9-9efd-63525728cbe9" To="930dc0f3-6fe1-4a34-9128-3d207b60167c">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="447" YCoordinate="97" />
              <Coordinates XCoordinate="447" YCoordinate="144" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="2831c5f5-7490-4275-ab2b-5577ef00a77e" From="64fb3a51-29b5-4ed9-9efd-63525728cbe9" To="e903e7be-d1d4-4e6f-8202-819d2b4f00fb">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="467" YCoordinate="77" />
              <Coordinates XCoordinate="565" YCoordinate="77" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="c84f8317-a3b7-45f1-ba7b-95c45567afcb" From="930dc0f3-6fe1-4a34-9128-3d207b60167c" To="a1c9f383-4dfa-4e5d-92ca-00c1a2faa5d3">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="492" YCoordinate="174" />
              <Coordinates XCoordinate="590" YCoordinate="174" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="b78def36-340e-4268-920c-fd097ca70e02" From="e903e7be-d1d4-4e6f-8202-819d2b4f00fb" To="a1c9f383-4dfa-4e5d-92ca-00c1a2faa5d3">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="610" YCoordinate="107" />
              <Coordinates XCoordinate="610" YCoordinate="154" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="aa6a02a6-82aa-4704-9134-e2fae86b038a" From="a1c9f383-4dfa-4e5d-92ca-00c1a2faa5d3" To="4740c11f-ca4e-4fc3-9112-610432776721">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="610" YCoordinate="194" />
              <Coordinates XCoordinate="610" YCoordinate="242" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="eb889a91-9460-4cfd-8ab1-3fd816d58cb0" From="4740c11f-ca4e-4fc3-9112-610432776721" To="1a278e1d-ce1e-43ad-9e14-778de81c7095">
          <Condition Type="CONDITION">
            <Expression>[:proc | ((proc taskTwoOption = ''1'') or: [(proc taskTwoOption = ''2'')]) and: [(proc taskThreeOption = ''10'') or: [proc taskThreeOption = ''20'']]
]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="590" YCoordinate="262" />
              <Coordinates XCoordinate="484" YCoordinate="262" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="0a79c933-92f2-436d-924d-43d77313944e" From="4740c11f-ca4e-4fc3-9112-610432776721" To="eb735563-e1e0-4118-ad97-1a4f6a7ec5b8">
          <Condition Type="CONDITION">
            <Expression>[:proc | (proc taskTwoOption = ''3'') and: [proc taskThreeOption = ''30'']
]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="610" YCoordinate="282" />
              <Coordinates XCoordinate="610" YCoordinate="332" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="778bf441-7636-4b4d-b597-3aab97ca7da4" From="1a278e1d-ce1e-43ad-9e14-778de81c7095" To="f40ff916-4532-4d2a-9e45-e81559284513">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="439" YCoordinate="292" />
              <Coordinates XCoordinate="439" YCoordinate="332" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="ec3f385c-dc3b-40e9-8a53-363af88dd722" From="eb735563-e1e0-4118-ad97-1a4f6a7ec5b8" To="f40ff916-4532-4d2a-9e45-e81559284513">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="565" YCoordinate="362" />
              <Coordinates XCoordinate="484" YCoordinate="362" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="16f539c0-30f5-40b8-86c5-3ab7d5c0416f" From="f40ff916-4532-4d2a-9e45-e81559284513" To="f1f00093-2bbb-45ac-867a-398961a2a081">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="394" YCoordinate="362" />
              <Coordinates XCoordinate="314" YCoordinate="362" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="8771b635-6500-4f9d-bcff-b6c306be81c0" From="f1f00093-2bbb-45ac-867a-398961a2a081" To="c7900244-a9ce-48a0-9a6f-7cc024de4baa">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc taskSixTime &lt; (Time fromString: ''14:00'') or: [proc taskFiveDate &lt; (Date fromString: ''12/12/2015'')]
]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="274" YCoordinate="362" />
              <Coordinates XCoordinate="231" YCoordinate="362" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="241a0e43-1982-4b56-bd0e-cef474a68f0f" From="c7900244-a9ce-48a0-9a6f-7cc024de4baa" To="3e844979-e36d-4bfb-9d4e-a7b3130f6227">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="186" YCoordinate="392" />
              <Coordinates XCoordinate="186" YCoordinate="468" />
              <Coordinates XCoordinate="279" YCoordinate="468" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="a94b7b40-aee4-4bfb-88d1-db58ece07a65" From="f1f00093-2bbb-45ac-867a-398961a2a081" To="3e844979-e36d-4bfb-9d4e-a7b3130f6227">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc taskSixTime &gt;= (Time fromString: ''14:00'') or: [proc taskFiveDate &gt;= (Date fromString: ''12/12/2015'')]
]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="294" YCoordinate="382" />
              <Coordinates XCoordinate="294" YCoordinate="453" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-04-07T18:01:00.8092249-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-04-07T18:01:00.8092249-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'