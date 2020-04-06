miem
xpdlDefinition_alta_representacion

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="034e8c7e-2085-4b70-bddb-c9aeda73b5b5" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2019-02-19T09:42:20.0189127-03:00</Created>
    <ModificationDate>2019-02-21T11:50:27.3181491-03:00</ModificationDate>
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
    <Pool Id="f6421149-d1bc-478d-9cda-2527fcf59089" Name="Main Process" Process="9541a46f-392f-4874-8aac-518bf9222066" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="18d38682-084b-41d6-86be-4a2022010964" Name="alta-representacion" Process="729e624a-f398-4848-ab09-4ade3709fba1" BoundaryVisible="true">
      <Lanes>
        <Lane Id="f14af079-f4ad-42cb-890a-1d2411ad8bfe" Name="Empresa" ParentPool="18d38682-084b-41d6-86be-4a2022010964">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="284" Width="748" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="f975c422-edaf-4017-a9e2-8945f0b88cda" Name="Operador" ParentPool="18d38682-084b-41d6-86be-4a2022010964">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="273" Width="748" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="284" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="557" Width="798" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="9541a46f-392f-4874-8aac-518bf9222066" Name="Main Process">
      <ProcessHeader>
        <Created>2019-02-21T11:51:15.0595071-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-02-19T09:42:20.3728999-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-02-19T09:42:20.3728999-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="729e624a-f398-4848-ab09-4ade3709fba1" Name="alta-representacion">
      <ProcessHeader>
        <Created>2019-02-21T11:51:15.0595071-03:00</Created>
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
        <Activity Id="0c99d6b7-7b7e-46b4-a992-fd6e5217be96" Name="inicio">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="148" YCoordinate="58" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="14cad5fc-df63-46f6-a666-3b6a5707096d" Name="alta-representaction">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="134" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="234" YCoordinate="43" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f709c454-8a36-4068-a08f-719082d0e63a" Name="alta-empresa">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="433" YCoordinate="43" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="a3c04e6e-2701-4021-a061-f905129c1ffa" Name="alta-instalaciones">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="133" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="598" YCoordinate="43" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="7e98338e-85be-4e6d-bc83-6e6f8e3ace0f" Name="documentos-representacion">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="168" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="580" YCoordinate="189" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="4f92ae49-596e-4565-9c2f-38a4f018bb53" Name="proceder ?">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="255.10000610351562" YCoordinate="199" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="1326829d-4fa2-4e9d-89e9-108882a1b810" Name="aprobar-representacion">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="135" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="207.60000610351562" YCoordinate="382" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="33fc16ae-cdd4-4a0b-946b-789940779ae0" Name="aprobada">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="462" YCoordinate="392" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="d428f5bc-8408-4040-82f6-6ed815a1f7d7" Name="final">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="670" YCoordinate="519" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="3b15033e-75f2-496b-99b0-252a3f45439a" Name="crear-representacion">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:script :process | (MiemAltaRepresentacionMapper newOn: process) executeMapping ]</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="128" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="621" YCoordinate="382" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="fa502933-0ad3-4500-9d09-88ce6a99c3a3" From="0c99d6b7-7b7e-46b4-a992-fd6e5217be96" To="14cad5fc-df63-46f6-a666-3b6a5707096d">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="178" YCoordinate="73" />
              <Coordinates XCoordinate="234" YCoordinate="73" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="82019698-a006-44b9-9f80-a6d067a29c56" From="14cad5fc-df63-46f6-a666-3b6a5707096d" To="f709c454-8a36-4068-a08f-719082d0e63a">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="368" YCoordinate="73" />
              <Coordinates XCoordinate="433" YCoordinate="73" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="da7a9deb-ff3d-4795-8bbb-109de81e0861" From="f709c454-8a36-4068-a08f-719082d0e63a" To="a3c04e6e-2701-4021-a061-f905129c1ffa">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="523" YCoordinate="73" />
              <Coordinates XCoordinate="598" YCoordinate="73" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="9f27ec92-b351-4b60-ba3c-418e0d518f21" From="a3c04e6e-2701-4021-a061-f905129c1ffa" To="7e98338e-85be-4e6d-bc83-6e6f8e3ace0f">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="664" YCoordinate="103" />
              <Coordinates XCoordinate="664" YCoordinate="189" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="02b838cf-5d87-403c-87f4-ff667513a912" From="7e98338e-85be-4e6d-bc83-6e6f8e3ace0f" To="4f92ae49-596e-4565-9c2f-38a4f018bb53">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="580" YCoordinate="219" />
              <Coordinates XCoordinate="295" YCoordinate="219" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="00e352b0-756a-48be-8865-19de78648566" From="4f92ae49-596e-4565-9c2f-38a4f018bb53" To="14cad5fc-df63-46f6-a666-3b6a5707096d">
          <Condition Type="CONDITION">
            <Expression>[:process | process proceder not]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="275" YCoordinate="199" />
              <Coordinates XCoordinate="275" YCoordinate="103" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="548a1b42-badb-4b76-b905-caf25492591d" From="4f92ae49-596e-4565-9c2f-38a4f018bb53" To="1326829d-4fa2-4e9d-89e9-108882a1b810">
          <Condition Type="CONDITION">
            <Expression>[:process | process proceder]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="275" YCoordinate="239" />
              <Coordinates XCoordinate="275" YCoordinate="310.5" />
              <Coordinates XCoordinate="274" YCoordinate="310.5" />
              <Coordinates XCoordinate="274" YCoordinate="382" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="74b1beae-8826-4d7c-b910-24a4ace9e94b" From="1326829d-4fa2-4e9d-89e9-108882a1b810" To="33fc16ae-cdd4-4a0b-946b-789940779ae0">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="342" YCoordinate="412" />
              <Coordinates XCoordinate="462" YCoordinate="412" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="32a0d358-41fe-44fa-ae8e-a801a8965058" From="33fc16ae-cdd4-4a0b-946b-789940779ae0" To="3b15033e-75f2-496b-99b0-252a3f45439a" Name="">
          <Condition Type="CONDITION">
            <Expression>[:process | process aprobada]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="502" YCoordinate="412" />
              <Coordinates XCoordinate="621" YCoordinate="412" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="058cab51-c79d-491e-9e51-d7fe3b193709" From="3b15033e-75f2-496b-99b0-252a3f45439a" To="d428f5bc-8408-4040-82f6-6ed815a1f7d7">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="685" YCoordinate="442" />
              <Coordinates XCoordinate="685" YCoordinate="519" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="1f751a7b-be87-4234-884f-e284e01f9467" From="33fc16ae-cdd4-4a0b-946b-789940779ae0" To="14cad5fc-df63-46f6-a666-3b6a5707096d" Name="">
          <Condition Type="CONDITION">
            <Expression>[:process | process aprobada not]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="482" YCoordinate="392" />
              <Coordinates XCoordinate="482" YCoordinate="247.5" />
              <Coordinates XCoordinate="326" YCoordinate="247.5" />
              <Coordinates XCoordinate="326" YCoordinate="103" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;alta-representacion&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-02-19T09:42:20.3819101-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-02-19T09:42:20.3819101-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'