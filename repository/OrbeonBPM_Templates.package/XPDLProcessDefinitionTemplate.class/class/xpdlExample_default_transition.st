default transition
xpdlExample_default_transition

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="1fb6f2c5-cc62-4ac0-b8dd-f575127d1592" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-07-02T17:47:46.8791714-03:00</Created>
    <ModificationDate>2016-07-02T18:20:33.3158395-03:00</ModificationDate>
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
    <Pool Id="8abb66d3-d64f-4598-a230-6ea367a3f52c" Name="Main Process" Process="18a82012-ae66-4564-86f2-a2cff9527d1e" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="09b185cb-5f24-471c-aec3-6699a383daea" Name="default-transition-process" Process="2fe6420e-370c-4da3-8cf1-5a91d59fbcb1" BoundaryVisible="true">
      <Lanes>
        <Lane Id="e5ca0153-d1cf-4677-a38d-914ff5cb7d60" Name="administrator" ParentPool="09b185cb-5f24-471c-aec3-6699a383daea">
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
    <WorkflowProcess Id="18a82012-ae66-4564-86f2-a2cff9527d1e" Name="Main Process">
      <ProcessHeader>
        <Created>2016-07-02T18:20:51.0990861-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-07-02T17:47:46.8801669-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-07-02T17:47:46.8801669-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="2fe6420e-370c-4da3-8cf1-5a91d59fbcb1" Name="default-transition-process">
      <ProcessHeader>
        <Created>2016-07-02T18:20:51.0990861-03:00</Created>
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
        <Activity Id="eed35927-d3f1-4ee3-aeba-2c5cca501049" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="151" YCoordinate="64" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="278868ab-db9d-4573-b927-20e1bcf82572" Name="script_1">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:script :proc | script setVariableNamed: ''randomInteger'' withValue: 10]</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="275" YCoordinate="49" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="232241b5-a544-4e07-9bf2-fe614018add1" Name="g exclusive">
          <Description />
          <Route MarkerVisible="true" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="465" YCoordinate="59" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="feb03f7b-e320-4902-bc35-96073713273d" Name="script_3">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:script :proc | ]</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="593" YCoordinate="49" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="91f502c0-1f8f-4625-82bb-6fb88afe32db" Name="script_2">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:script :proc | script setVariableNamed: ''age'' withValue: 40]</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="440" YCoordinate="148" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="c95fc36c-6784-4ad4-9c05-b448b672153b" Name="script_4">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:script :proc | ]</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="131" YCoordinate="148" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="34686edd-7ba8-45a1-b8ee-5a3aed97cd99" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="623" YCoordinate="286" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="c888a975-65c4-4225-8b1c-30104e33dc0c" Name="g inclusive">
          <Description />
          <Route GatewayType="Inclusive" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="156" YCoordinate="261" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="ab987b86-7f63-4ef9-9988-29f7ff474022" Name="script_6">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:script :proc| ]</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="324" YCoordinate="301" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="09f70c01-569a-4dd6-8ac6-fdd9d21de7ab" Name="script_5">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:script :proc | ]</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="316" YCoordinate="224" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="1adaa7f4-e7db-4b96-92fa-eb04da5d5384" From="eed35927-d3f1-4ee3-aeba-2c5cca501049" To="278868ab-db9d-4573-b927-20e1bcf82572">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="181" YCoordinate="79" />
              <Coordinates XCoordinate="275" YCoordinate="79" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1d6e8038-a6fb-4811-84dc-914886c9e64a" From="278868ab-db9d-4573-b927-20e1bcf82572" To="232241b5-a544-4e07-9bf2-fe614018add1">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="365" YCoordinate="79" />
              <Coordinates XCoordinate="465" YCoordinate="79" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="13f08d89-9878-4dba-83dd-7152c57aa962" From="232241b5-a544-4e07-9bf2-fe614018add1" To="91f502c0-1f8f-4625-82bb-6fb88afe32db" Name="">
          <Condition Type="OTHERWISE" />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="485" YCoordinate="99" />
              <Coordinates XCoordinate="485" YCoordinate="148" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="b9ab7fca-6c65-40cc-a0c8-9e623320f36c" From="232241b5-a544-4e07-9bf2-fe614018add1" To="feb03f7b-e320-4902-bc35-96073713273d" Name="">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc randomInteger = 11]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="505" YCoordinate="79" />
              <Coordinates XCoordinate="593" YCoordinate="79" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="60003f10-376b-4183-a3af-abbc0eed0a6b" From="91f502c0-1f8f-4625-82bb-6fb88afe32db" To="c95fc36c-6784-4ad4-9c05-b448b672153b" Name="">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc randomInteger = 10]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="440" YCoordinate="178" />
              <Coordinates XCoordinate="221" YCoordinate="178" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="5f3a14b0-2830-426d-9ada-47bead6166f0" From="feb03f7b-e320-4902-bc35-96073713273d" To="34686edd-7ba8-45a1-b8ee-5a3aed97cd99">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="638" YCoordinate="109" />
              <Coordinates XCoordinate="638" YCoordinate="286" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="4410d1c8-2ec1-4afa-b69c-8ff5fdcb360d" From="c95fc36c-6784-4ad4-9c05-b448b672153b" To="c888a975-65c4-4225-8b1c-30104e33dc0c">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="176" YCoordinate="208" />
              <Coordinates XCoordinate="176" YCoordinate="261" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="a76a403d-553d-485b-90a4-b9abddb22b0a" From="c888a975-65c4-4225-8b1c-30104e33dc0c" To="09f70c01-569a-4dd6-8ac6-fdd9d21de7ab">
          <Condition Type="OTHERWISE" />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="196" YCoordinate="281" />
              <Coordinates XCoordinate="246" YCoordinate="281" />
              <Coordinates XCoordinate="246" YCoordinate="254" />
              <Coordinates XCoordinate="316" YCoordinate="254" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="dbc35333-1554-48e3-954d-0f9f08a7adce" From="c888a975-65c4-4225-8b1c-30104e33dc0c" To="ab987b86-7f63-4ef9-9988-29f7ff474022" Name="">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc randomInteger = 11]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="176" YCoordinate="301" />
              <Coordinates XCoordinate="176" YCoordinate="331" />
              <Coordinates XCoordinate="324" YCoordinate="331" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="e3f4946c-da23-49f1-9f68-ad2b4637b40b" From="09f70c01-569a-4dd6-8ac6-fdd9d21de7ab" To="34686edd-7ba8-45a1-b8ee-5a3aed97cd99">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="406" YCoordinate="254" />
              <Coordinates XCoordinate="514.5" YCoordinate="254" />
              <Coordinates XCoordinate="514.5" YCoordinate="301" />
              <Coordinates XCoordinate="623" YCoordinate="301" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="6f824397-2734-47eb-9c7f-0c5de115367e" From="ab987b86-7f63-4ef9-9988-29f7ff474022" To="34686edd-7ba8-45a1-b8ee-5a3aed97cd99">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="414" YCoordinate="331" />
              <Coordinates XCoordinate="517.5" YCoordinate="331" />
              <Coordinates XCoordinate="517.5" YCoordinate="301" />
              <Coordinates XCoordinate="623" YCoordinate="301" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-07-02T17:47:46.8801669-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-07-02T17:47:46.8801669-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'