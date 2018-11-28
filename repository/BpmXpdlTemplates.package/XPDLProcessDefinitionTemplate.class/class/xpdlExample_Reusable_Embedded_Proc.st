embedded subproc
xpdlExample_Reusable_Embedded_Proc

^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="a882c7ed-83b9-4174-aeda-4c8a49e596e6" Name="ReusableEmbeddedProc" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-06-25T11:26:32.7776919-03:00</Created>
    <ModificationDate>2016-06-25T12:27:08.9719061-03:00</ModificationDate>
    <Description>ReusableEmbeddedProc</Description>
    <Documentation />
  </PackageHeader>
  <RedefinableHeader>
    <Author>Usuario</Author>
    <Version>1.0</Version>
    <Countrykey>CO</Countrykey>
  </RedefinableHeader>
  <ExternalPackages />
  <Pools>
    <Pool Id="ff3e2127-e6d8-4fd9-a676-ba0f9611c63f" Name="Main Process" Process="8edf29f3-d072-4ffb-9439-cec9a1d93dde" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="0" Width="0" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="8ab33ae2-e548-48d3-9b30-81e44fd6e52f" Name="ReusableEmbeddedProc" Process="6705db77-f6e8-4c8d-a9b5-b96bb17a957f" BoundaryVisible="true">
      <Lanes>
        <Lane Id="650e7842-3af4-4013-98ba-fe8273df2036" Name="administrator" ParentPool="8ab33ae2-e548-48d3-9b30-81e44fd6e52f">
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
    <WorkflowProcess Id="8edf29f3-d072-4ffb-9439-cec9a1d93dde" Name="Main Process">
      <ProcessHeader>
        <Created>2016-06-25T12:27:32.4995453-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-06-25T11:26:32.7866975-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-06-25T11:26:32.7866975-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="6705db77-f6e8-4c8d-a9b5-b96bb17a957f" Name="ReusableEmbeddedProc">
      <ProcessHeader>
        <Created>2016-06-25T12:27:32.500546-03:00</Created>
        <Description />
      </ProcessHeader>
      <RedefinableHeader>
        <Author />
        <Version />
        <Countrykey>CO</Countrykey>
      </RedefinableHeader>
      <ActivitySets>
        <ActivitySet Id="f123a1c0-9b6d-44cd-bfc5-c78e1d499206" Name="embedded-sub-proc">
          <Associations />
          <Artifacts />
          <Activities>
            <Activity Id="28265013-804f-4101-8ef3-7cf8257893f5" Name="start-embedded">
              <Description />
              <Event>
                <StartEvent Trigger="None" />
              </Event>
              <Documentation />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
                  <Coordinates XCoordinate="131" YCoordinate="50" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes>
                <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
              </ExtendedAttributes>
            </Activity>
            <Activity Id="f3d025d8-fb49-4083-8f13-1d319b96dff2" Name="script-embedded">
              <Description />
              <Implementation>
                <Task>
                  <TaskScript>
                    <Script>[:process :script | ]</Script>
                  </TaskScript>
                </Task>
              </Implementation>
              <Performers />
              <Documentation />
              <Loop LoopType="None" />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="140" BorderColor="-16553830" FillColor="-1249281">
                  <Coordinates XCoordinate="309" YCoordinate="35" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes />
            </Activity>
            <Activity Id="93743e15-d411-4789-a5cb-039036c30fbf" Name="end-embedded">
              <Description />
              <Event>
                <EndEvent Result="None" />
              </Event>
              <Documentation />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
                  <Coordinates XCoordinate="364" YCoordinate="197" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes />
            </Activity>
          </Activities>
          <Transitions>
            <Transition Id="1882f754-5bb3-4ab1-9cbe-9b3c7fff07c9" From="28265013-804f-4101-8ef3-7cf8257893f5" To="f3d025d8-fb49-4083-8f13-1d319b96dff2">
              <Condition />
              <Description />
              <ConnectorGraphicsInfos>
                <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
                  <Coordinates XCoordinate="161" YCoordinate="65" />
                  <Coordinates XCoordinate="309" YCoordinate="65" />
                </ConnectorGraphicsInfo>
              </ConnectorGraphicsInfos>
              <ExtendedAttributes />
            </Transition>
            <Transition Id="398ad9b3-ff8b-4ec6-869a-eba522cf83c9" From="f3d025d8-fb49-4083-8f13-1d319b96dff2" To="93743e15-d411-4789-a5cb-039036c30fbf">
              <Condition />
              <Description />
              <ConnectorGraphicsInfos>
                <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
                  <Coordinates XCoordinate="379" YCoordinate="95" />
                  <Coordinates XCoordinate="379" YCoordinate="197" />
                </ConnectorGraphicsInfo>
              </ConnectorGraphicsInfos>
              <ExtendedAttributes />
            </Transition>
          </Transitions>
        </ActivitySet>
      </ActivitySets>
      <DataInputOutputs />
      <Activities>
        <Activity Id="2dc551e8-5914-4178-a0c3-0e9623ea5b79" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="131" YCoordinate="56" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="0c647959-ac91-4bdc-b8f0-aacf2542d134" Name="script">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:process :script | ]</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="236" YCoordinate="41" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f123a1c0-9b6d-44cd-bfc5-c78e1d499206" Name="embedded-sub-proc">
          <Description />
          <BlockActivity ActivitySetId="f123a1c0-9b6d-44cd-bfc5-c78e1d499206" />
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="421" YCoordinate="41" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;,&quot;multiInstancePropertyGuid&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;groupByAttributesXPathList&quot;:[]}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="67983f98-d3f0-4cc5-b8f6-b677764b11db" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="168" YCoordinate="232" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="5197c000-5be0-433a-8758-d2498820ee86" Name="reusabe-sub-proc">
          <Description />
          <Implementation>
            <SubFlow Id="b71cb2f4-7b83-40ff-96e6-fb3ae1b592d0" />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="421" YCoordinate="217" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;,&quot;multiInstancePropertyGuid&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;groupByAttributesXPathList&quot;:[]}" />
          </ExtendedAttributes>
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="1dd29765-0dfe-4347-aa57-c926b95da752" From="2dc551e8-5914-4178-a0c3-0e9623ea5b79" To="0c647959-ac91-4bdc-b8f0-aacf2542d134">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="161" YCoordinate="71" />
              <Coordinates XCoordinate="236" YCoordinate="71" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="0b335f9a-4cfd-43bf-a952-cda0360edc3b" From="0c647959-ac91-4bdc-b8f0-aacf2542d134" To="f123a1c0-9b6d-44cd-bfc5-c78e1d499206">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="326" YCoordinate="71" />
              <Coordinates XCoordinate="421" YCoordinate="71" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="0b47ceea-03e1-4190-b8d7-3bd59527ef52" From="f123a1c0-9b6d-44cd-bfc5-c78e1d499206" To="5197c000-5be0-433a-8758-d2498820ee86">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="466" YCoordinate="101" />
              <Coordinates XCoordinate="466" YCoordinate="217" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="5f1eaa6a-794a-4071-a2da-b982567d8ef7" From="5197c000-5be0-433a-8758-d2498820ee86" To="67983f98-d3f0-4cc5-b8f6-b677764b11db">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="421" YCoordinate="247" />
              <Coordinates XCoordinate="198" YCoordinate="247" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-06-25T11:26:32.7906989-03:00&quot;,&quot;description&quot;:&quot;&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-06-25T11:26:32.7906989-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'