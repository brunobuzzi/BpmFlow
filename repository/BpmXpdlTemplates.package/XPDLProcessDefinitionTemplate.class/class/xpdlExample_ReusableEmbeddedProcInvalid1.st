reusable embedded invalid
xpdlExample_ReusableEmbeddedProcInvalid1

^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="9b6b2074-b305-4c49-9175-3bb1dca5f7df" Name="ReusableEmbeddedProc" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-06-25T11:26:32.7776919-03:00</Created>
    <ModificationDate>2019-09-27T13:50:08.5010348-03:00</ModificationDate>
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
    <Pool Id="07db6576-4aee-42c9-9a98-fb3acdbd706c" Name="Main Process" Process="22966683-a587-4740-8498-43276e8a764c" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="cbc00ddc-3f56-4003-8cc1-9dab666b722e" Name="ReusableEmbeddedProcInvalid1" Process="fbc87b16-ab71-4358-8499-c0c6dfd5b52c" BoundaryVisible="true">
      <Lanes>
        <Lane Id="c3370f02-56b6-4e98-8490-6470732d5478" Name="administrator" ParentPool="cbc00ddc-3f56-4003-8cc1-9dab666b722e">
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
    <WorkflowProcess Id="22966683-a587-4740-8498-43276e8a764c" Name="Main Process">
      <ProcessHeader>
        <Created>2019-09-27T13:50:27.8409726-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:0,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-06-25T11:26:32.7866975-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2016-06-25T11:26:32.7866975-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="fbc87b16-ab71-4358-8499-c0c6dfd5b52c" Name="ReusableEmbeddedProcInvalid1">
      <ProcessHeader>
        <Created>2019-09-27T13:50:27.8419702-03:00</Created>
        <Description />
      </ProcessHeader>
      <RedefinableHeader>
        <Author />
        <Version />
        <Countrykey>CO</Countrykey>
      </RedefinableHeader>
      <ActivitySets>
        <ActivitySet Id="dae5dc0e-5d07-467e-a983-47fc69567804" Name="embedded-sub-proc-2">
          <Associations />
          <Artifacts />
          <Activities>
            <Activity Id="151beb04-33d3-43ac-aa32-b6fae1a42af3" Name="start-embedded">
              <Description />
              <Event>
                <StartEvent Trigger="None" />
              </Event>
              <Documentation />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
                  <Coordinates XCoordinate="131" YCoordinate="50" />
                  <TextDirection xsi:nil="true" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes>
                <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
              </ExtendedAttributes>
            </Activity>
            <Activity Id="deae053a-efe4-47a9-b554-e35386d7d5d1" Name="script-embedded">
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
                  <TextDirection xsi:nil="true" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes />
            </Activity>
            <Activity Id="5f730982-008e-4390-afdd-42be73ee6bda" Name="end-embedded">
              <Description />
              <Event>
                <EndEvent Result="None" />
              </Event>
              <Documentation />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
                  <Coordinates XCoordinate="364" YCoordinate="197" />
                  <TextDirection xsi:nil="true" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes />
            </Activity>
          </Activities>
          <Transitions>
            <Transition Id="04c4e616-cde5-4ab4-b42f-cd8f1a5db3fc" From="151beb04-33d3-43ac-aa32-b6fae1a42af3" To="deae053a-efe4-47a9-b554-e35386d7d5d1">
              <Condition />
              <Description />
              <ConnectorGraphicsInfos>
                <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
                  <TextDirection xsi:nil="true" />
                  <Coordinates XCoordinate="161" YCoordinate="65" />
                  <Coordinates XCoordinate="309" YCoordinate="65" />
                </ConnectorGraphicsInfo>
              </ConnectorGraphicsInfos>
              <ExtendedAttributes />
            </Transition>
            <Transition Id="27b90869-f20e-46bb-9ad9-79efad18819b" From="deae053a-efe4-47a9-b554-e35386d7d5d1" To="5f730982-008e-4390-afdd-42be73ee6bda">
              <Condition />
              <Description />
              <ConnectorGraphicsInfos>
                <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
                  <TextDirection xsi:nil="true" />
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
        <Activity Id="1882ed47-c707-4787-97aa-3b6ca5be5381" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="131" YCoordinate="56" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="6422b853-28d5-4e2c-b1c0-d20867d4803b" Name="script">
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
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="dae5dc0e-5d07-467e-a983-47fc69567804" Name="embedded-sub-proc-2">
          <Description />
          <BlockActivity ActivitySetId="dae5dc0e-5d07-467e-a983-47fc69567804" />
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="421" YCoordinate="41" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="7d796f97-7b9f-485b-835c-e17c64bc63c5" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="168" YCoordinate="232" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="a35c8405-7a03-4963-ae64-e0bafbe04a46" Name="reusable-sub-proc-2">
          <Description />
          <Implementation>
            <SubFlow Id="6fd86357-8c77-4b25-8889-8faaeec82275" />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="421" YCoordinate="217" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;}" />
          </ExtendedAttributes>
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="e381da83-e168-414a-88eb-29242a0cd6ca" From="1882ed47-c707-4787-97aa-3b6ca5be5381" To="6422b853-28d5-4e2c-b1c0-d20867d4803b">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="161" YCoordinate="71" />
              <Coordinates XCoordinate="236" YCoordinate="71" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="e18f51ce-37f3-4564-ac7b-b5129f957ee2" From="6422b853-28d5-4e2c-b1c0-d20867d4803b" To="dae5dc0e-5d07-467e-a983-47fc69567804">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="326" YCoordinate="71" />
              <Coordinates XCoordinate="421" YCoordinate="71" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="019013fb-68f0-45dd-a4c5-2c79d0e166b3" From="dae5dc0e-5d07-467e-a983-47fc69567804" To="a35c8405-7a03-4963-ae64-e0bafbe04a46">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="466" YCoordinate="101" />
              <Coordinates XCoordinate="466" YCoordinate="217" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1f8100c9-7bab-4e10-a214-3c9800d2b413" From="a35c8405-7a03-4963-ae64-e0bafbe04a46" To="7d796f97-7b9f-485b-835c-e17c64bc63c5">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="421" YCoordinate="247" />
              <Coordinates XCoordinate="198" YCoordinate="247" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;ReusableEmbeddedProcInvalid1&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:0,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-06-25T11:26:32.7906989-03:00&quot;,&quot;description&quot;:&quot;&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2016-06-25T11:26:32.7906989-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'