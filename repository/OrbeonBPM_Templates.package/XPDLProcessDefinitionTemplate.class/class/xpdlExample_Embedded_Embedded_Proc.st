embedded subproc subproc
xpdlExample_Embedded_Embedded_Proc

^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="f4661b29-02a5-44e8-ab79-c6aeacfe857c" Name="multi-embedded" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-06-26T20:16:49.7284-03:00</Created>
    <ModificationDate>2016-07-05T13:25:19.9961082-03:00</ModificationDate>
    <Description>multi-embedded</Description>
    <Documentation />
  </PackageHeader>
  <RedefinableHeader>
    <Author>Usuario</Author>
    <Version>1.0</Version>
    <Countrykey>CO</Countrykey>
  </RedefinableHeader>
  <ExternalPackages />
  <Pools>
    <Pool Id="252327ef-bad5-4851-b2f0-344c17d8c9ba" Name="Main Process" Process="acaa4f73-b0a2-4cc9-acdc-e190fd75a4be" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="242b0f72-57fd-4119-84a3-e21b466a39a0" Name="multi-embedded" Process="d3844eb2-c2b9-4b59-925b-0fac7f8f6b4d" BoundaryVisible="true">
      <Lanes>
        <Lane Id="e85d7a42-b158-44c8-817d-651605416fd1" Name="administrator" ParentPool="242b0f72-57fd-4119-84a3-e21b466a39a0">
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
    <WorkflowProcess Id="acaa4f73-b0a2-4cc9-acdc-e190fd75a4be" Name="Main Process">
      <ProcessHeader>
        <Created>2016-07-05T13:26:11.6743245-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-06-26T20:16:49.729165-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-06-26T20:16:49.729165-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="d3844eb2-c2b9-4b59-925b-0fac7f8f6b4d" Name="multi-embedded">
      <ProcessHeader>
        <Created>2016-07-05T13:26:11.6743245-03:00</Created>
        <Description />
      </ProcessHeader>
      <RedefinableHeader>
        <Author />
        <Version />
        <Countrykey>CO</Countrykey>
      </RedefinableHeader>
      <ActivitySets>
        <ActivitySet Id="60c29a18-05c8-4b84-86e2-5caf40101cef" Name="embedded 02">
          <Associations />
          <Artifacts />
          <Activities>
            <Activity Id="a0d9e4ea-424e-42fe-a290-e91293d0215d" Name="start embedded 02">
              <Description />
              <Event>
                <StartEvent Trigger="None" />
              </Event>
              <Documentation />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
                  <Coordinates XCoordinate="108" YCoordinate="69" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes>
                <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
              </ExtendedAttributes>
            </Activity>
            <Activity Id="41bdd2fa-6c5e-4251-8846-a4c85c14b7fb" Name="script-embedded-02">
              <Description />
              <Implementation>
                <Task>
                  <TaskScript>
                    <Script />
                  </TaskScript>
                </Task>
              </Implementation>
              <Performers />
              <Documentation />
              <Loop LoopType="None" />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
                  <Coordinates XCoordinate="301" YCoordinate="54" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes />
            </Activity>
            <Activity Id="aa448030-633f-4873-b7d6-6af60b345055" Name="end embedded 02">
              <Description />
              <Event>
                <EndEvent Result="None" />
              </Event>
              <Documentation />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
                  <Coordinates XCoordinate="331" YCoordinate="209" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes />
            </Activity>
          </Activities>
          <Transitions>
            <Transition Id="70ed2827-e154-4c78-a945-5f948aa344a6" From="a0d9e4ea-424e-42fe-a290-e91293d0215d" To="41bdd2fa-6c5e-4251-8846-a4c85c14b7fb">
              <Condition />
              <Description />
              <ConnectorGraphicsInfos>
                <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
                  <Coordinates XCoordinate="138" YCoordinate="84" />
                  <Coordinates XCoordinate="301" YCoordinate="84" />
                </ConnectorGraphicsInfo>
              </ConnectorGraphicsInfos>
              <ExtendedAttributes />
            </Transition>
            <Transition Id="557b5dc2-d912-48f6-982d-a3a7fe3f76c8" From="41bdd2fa-6c5e-4251-8846-a4c85c14b7fb" To="aa448030-633f-4873-b7d6-6af60b345055">
              <Condition />
              <Description />
              <ConnectorGraphicsInfos>
                <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
                  <Coordinates XCoordinate="346" YCoordinate="114" />
                  <Coordinates XCoordinate="346" YCoordinate="209" />
                </ConnectorGraphicsInfo>
              </ConnectorGraphicsInfos>
              <ExtendedAttributes />
            </Transition>
          </Transitions>
        </ActivitySet>
        <ActivitySet Id="13fccdbc-d9bd-4a36-a69f-9058dc424a3f" Name="embedded 01">
          <Associations />
          <Artifacts />
          <Activities>
            <Activity Id="1f32b1c6-52aa-4952-b71a-bb624e0a0bf2" Name="start embedded 01">
              <Description />
              <Event>
                <StartEvent Trigger="None" />
              </Event>
              <Documentation />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
                  <Coordinates XCoordinate="87" YCoordinate="68" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes>
                <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
              </ExtendedAttributes>
            </Activity>
            <Activity Id="d87d6f49-1eb3-41fc-a8b9-df706519cfa3" Name="end embedded 01">
              <Description />
              <Event>
                <EndEvent Result="None" />
              </Event>
              <Documentation />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
                  <Coordinates XCoordinate="101" YCoordinate="207.69999694824219" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes />
            </Activity>
            <Activity Id="60c29a18-05c8-4b84-86e2-5caf40101cef" Name="embedded 02">
              <Description />
              <BlockActivity ActivitySetId="60c29a18-05c8-4b84-86e2-5caf40101cef" />
              <Performers />
              <Documentation />
              <Loop LoopType="None" />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
                  <Coordinates XCoordinate="300" YCoordinate="181" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes>
                <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;,&quot;multiInstancePropertyGuid&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;groupByAttributesXPathList&quot;:[]}" />
              </ExtendedAttributes>
            </Activity>
            <Activity Id="af50bc85-160b-4387-9068-cab2330eb458" Name="script-embedded-01">
              <Description />
              <Implementation>
                <Task>
                  <TaskScript>
                    <Script />
                  </TaskScript>
                </Task>
              </Implementation>
              <Performers />
              <Documentation />
              <Loop LoopType="None" />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="138" BorderColor="-16553830" FillColor="-1249281">
                  <Coordinates XCoordinate="276" YCoordinate="53" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes />
            </Activity>
          </Activities>
          <Transitions>
            <Transition Id="70e8bc92-18c0-414c-aa3e-b2e775f4378e" From="1f32b1c6-52aa-4952-b71a-bb624e0a0bf2" To="af50bc85-160b-4387-9068-cab2330eb458">
              <Condition />
              <Description />
              <ConnectorGraphicsInfos>
                <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
                  <Coordinates XCoordinate="117" YCoordinate="83" />
                  <Coordinates XCoordinate="276" YCoordinate="83" />
                </ConnectorGraphicsInfo>
              </ConnectorGraphicsInfos>
              <ExtendedAttributes />
            </Transition>
            <Transition Id="0aac92cc-8ce2-4332-9412-87e58e9b11c3" From="af50bc85-160b-4387-9068-cab2330eb458" To="60c29a18-05c8-4b84-86e2-5caf40101cef">
              <Condition />
              <Description />
              <ConnectorGraphicsInfos>
                <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
                  <Coordinates XCoordinate="345" YCoordinate="113" />
                  <Coordinates XCoordinate="345" YCoordinate="181" />
                </ConnectorGraphicsInfo>
              </ConnectorGraphicsInfos>
              <ExtendedAttributes />
            </Transition>
            <Transition Id="6ff45638-02ab-47b3-86b0-a6100f7387a9" From="60c29a18-05c8-4b84-86e2-5caf40101cef" To="d87d6f49-1eb3-41fc-a8b9-df706519cfa3">
              <Condition />
              <Description />
              <ConnectorGraphicsInfos>
                <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
                  <Coordinates XCoordinate="300" YCoordinate="222" />
                  <Coordinates XCoordinate="131" YCoordinate="222" />
                </ConnectorGraphicsInfo>
              </ConnectorGraphicsInfos>
              <ExtendedAttributes />
            </Transition>
          </Transitions>
        </ActivitySet>
      </ActivitySets>
      <DataInputOutputs />
      <Activities>
        <Activity Id="e833ca1a-e7bd-4f7b-9f29-adb5770512ed" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="136" YCoordinate="62" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="3f30270f-c49b-4762-ba94-e36435780165" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="460" YCoordinate="217" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f3ed9dc2-f2cf-417d-a478-276b2e4c6cf2" Name="script">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script />
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="244" YCoordinate="47" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="13fccdbc-d9bd-4a36-a69f-9058dc424a3f" Name="embedded 01">
          <Description />
          <BlockActivity ActivitySetId="13fccdbc-d9bd-4a36-a69f-9058dc424a3f" />
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="430" YCoordinate="47" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;,&quot;multiInstancePropertyGuid&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;groupByAttributesXPathList&quot;:[]}" />
          </ExtendedAttributes>
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="0f4c038d-01a4-424a-ab72-130df89467fe" From="e833ca1a-e7bd-4f7b-9f29-adb5770512ed" To="f3ed9dc2-f2cf-417d-a478-276b2e4c6cf2">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="166" YCoordinate="77" />
              <Coordinates XCoordinate="244" YCoordinate="77" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="7fa35531-bc80-4d51-a96e-95061069a807" From="f3ed9dc2-f2cf-417d-a478-276b2e4c6cf2" To="13fccdbc-d9bd-4a36-a69f-9058dc424a3f">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="334" YCoordinate="77" />
              <Coordinates XCoordinate="430" YCoordinate="77" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="a6f07b7f-223b-4912-98c1-6cb464fb2439" From="13fccdbc-d9bd-4a36-a69f-9058dc424a3f" To="3f30270f-c49b-4762-ba94-e36435780165">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="475" YCoordinate="107" />
              <Coordinates XCoordinate="475" YCoordinate="217" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-06-26T20:16:49.7301691-03:00&quot;,&quot;description&quot;:&quot;&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-06-26T20:16:49.7301691-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'