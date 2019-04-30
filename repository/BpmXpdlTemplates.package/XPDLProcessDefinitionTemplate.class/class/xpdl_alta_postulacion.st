miem
xpdl_alta_postulacion

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="eb2e0edf-b55b-4bb7-91b7-3845e9fa6a8e" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2019-02-27T17:32:42.9118492-03:00</Created>
    <ModificationDate>2019-04-30T09:39:09.1334351-03:00</ModificationDate>
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
    <Pool Id="43f06f9d-a12a-4355-820d-3915a5213344" Name="Main Process" Process="a4e9676e-94e4-4b95-8e18-42c96b0450df" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="c3585c5c-ec6b-4c35-acf7-63322570ec3d" Name="postular-a-instrumento" Process="08f9f6ab-9043-41d5-94fd-7b2257a04fca" BoundaryVisible="true">
      <Lanes>
        <Lane Id="ecf79fc1-4926-4fb0-8f07-977275e426e1" Name="Empresa" ParentPool="c3585c5c-ec6b-4c35-acf7-63322570ec3d">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="216" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="b9a8b4db-5c86-4b21-b9a1-50b10597da14" Name="Operador" ParentPool="c3585c5c-ec6b-4c35-acf7-63322570ec3d">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="268" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="216" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="484" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="a4e9676e-94e4-4b95-8e18-42c96b0450df" Name="Main Process">
      <ProcessHeader>
        <Created>2019-04-30T09:40:43.4248697-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-02-27T17:32:43.4124571-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-02-27T17:32:43.4124571-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="08f9f6ab-9043-41d5-94fd-7b2257a04fca" Name="postular-a-instrumento">
      <ProcessHeader>
        <Created>2019-04-30T09:40:43.4248697-03:00</Created>
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
        <Activity Id="0243ab21-4a62-4640-b52a-3aae039b96e9" Name="inicio">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="117" YCoordinate="37" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="289b2590-5443-4bce-8533-3af31d92de46" Name="seleccionar-postulacion">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="136" BorderColor="-11834615" FillColor="-6571175">
              <Coordinates XCoordinate="156" YCoordinate="81" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="seasideComponent" Value="WASeleccionarPostulacionForm" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="bd3738fc-5e9b-45be-a9d7-d9c3dc468853" Name="valores-escenarios">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="155" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="360" YCoordinate="81" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="seasideComponent" Value="" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="69a22928-7144-454c-83bd-48714f1bfd48" Name="analizar-postulacion">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="123" BorderColor="-11834615" FillColor="-6571175">
              <Coordinates XCoordinate="147" YCoordinate="271" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="seasideComponent" Value="WAAnalizarPostulacionForm" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="6fb210fe-94ad-41e0-93e0-22e4ffb0dfc7" Name="resolver-postulacion">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="125" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="400" YCoordinate="271" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="424f3a70-2e40-48f5-bee2-1b2a483882a2" Name="fin">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="685" YCoordinate="432" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="f23610fd-0f4b-4278-8b74-f2441ac99ede" Name="generar-postulacion">
          <Description />
          <Implementation>
            <Task>
              <TaskScript>
                <Script>[:script :process | (MiemGenerarPostulacionMapper newOn: process) executeMapping ]</Script>
              </TaskScript>
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="133" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="396" YCoordinate="417" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="0c436122-8fa9-4212-a14b-a74a2c49c508" Name="necesita aclaraciones ?">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="603" YCoordinate="281" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="3967da94-4892-4f3c-a13d-750c71b183c8" Name="razones-rechazo">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="105" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="172" YCoordinate="444" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="421d0e67-8d46-429b-869b-83d5a9969bde" Name="aprobada ?">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="442" YCoordinate="346" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="9ed45a7e-8191-4999-b161-f6feedc7813f" From="0243ab21-4a62-4640-b52a-3aae039b96e9" To="289b2590-5443-4bce-8533-3af31d92de46">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="132" YCoordinate="67" />
              <Coordinates XCoordinate="132" YCoordinate="111" />
              <Coordinates XCoordinate="156" YCoordinate="111" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="3492f69b-d557-4ce4-af8b-3e526b861324" From="289b2590-5443-4bce-8533-3af31d92de46" To="bd3738fc-5e9b-45be-a9d7-d9c3dc468853">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="292" YCoordinate="111" />
              <Coordinates XCoordinate="360" YCoordinate="111" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="b285fa36-8e4b-4696-8ec5-40ab0d5f92f3" From="69a22928-7144-454c-83bd-48714f1bfd48" To="6fb210fe-94ad-41e0-93e0-22e4ffb0dfc7">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="270" YCoordinate="301" />
              <Coordinates XCoordinate="400" YCoordinate="301" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="3282051b-45ed-4d6a-8b63-283009bd33ee" From="f23610fd-0f4b-4278-8b74-f2441ac99ede" To="424f3a70-2e40-48f5-bee2-1b2a483882a2">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="529" YCoordinate="447" />
              <Coordinates XCoordinate="685" YCoordinate="447" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="f9241243-e245-4f1c-a1df-bd4f9b761976" From="bd3738fc-5e9b-45be-a9d7-d9c3dc468853" To="69a22928-7144-454c-83bd-48714f1bfd48">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="437" YCoordinate="141" />
              <Coordinates XCoordinate="437" YCoordinate="211" />
              <Coordinates XCoordinate="208" YCoordinate="211" />
              <Coordinates XCoordinate="208" YCoordinate="271" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="cc579a1f-df53-402d-a095-0f7f544b6feb" From="6fb210fe-94ad-41e0-93e0-22e4ffb0dfc7" To="0c436122-8fa9-4212-a14b-a74a2c49c508">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="525" YCoordinate="301" />
              <Coordinates XCoordinate="603" YCoordinate="301" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="ab215181-1e9a-4650-af77-59c54ec915ab" From="0c436122-8fa9-4212-a14b-a74a2c49c508" To="bd3738fc-5e9b-45be-a9d7-d9c3dc468853" Name="">
          <Condition Type="CONDITION">
            <Expression>[:process | process necesitaAclaraciones]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="623" YCoordinate="281" />
              <Coordinates XCoordinate="623" YCoordinate="111" />
              <Coordinates XCoordinate="515" YCoordinate="111" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="10da8f46-37a3-40cf-a07d-5846108acc57" From="0c436122-8fa9-4212-a14b-a74a2c49c508" To="421d0e67-8d46-429b-869b-83d5a9969bde">
          <Condition Type="CONDITION">
            <Expression>[:process | process necesitaAclaraciones not]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="623" YCoordinate="321" />
              <Coordinates XCoordinate="623" YCoordinate="366" />
              <Coordinates XCoordinate="482" YCoordinate="366" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="ebb7ebd8-213b-4ed5-acd4-3eefde50be67" From="421d0e67-8d46-429b-869b-83d5a9969bde" To="f23610fd-0f4b-4278-8b74-f2441ac99ede">
          <Condition Type="CONDITION">
            <Expression>[:process | process aprobada]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="462" YCoordinate="386" />
              <Coordinates XCoordinate="462" YCoordinate="417" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="95f05c78-161f-45bf-b832-de30e9030a72" From="421d0e67-8d46-429b-869b-83d5a9969bde" To="3967da94-4892-4f3c-a13d-750c71b183c8">
          <Condition Type="CONDITION">
            <Expression>[:process | process aprobada not]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="442" YCoordinate="366" />
              <Coordinates XCoordinate="224" YCoordinate="366" />
              <Coordinates XCoordinate="224" YCoordinate="444" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="347a1e1d-21da-45b6-b6a7-b26ebea2a415" From="3967da94-4892-4f3c-a13d-750c71b183c8" To="424f3a70-2e40-48f5-bee2-1b2a483882a2">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="277" YCoordinate="474" />
              <Coordinates XCoordinate="313" YCoordinate="474" />
              <Coordinates XCoordinate="313" YCoordinate="491" />
              <Coordinates XCoordinate="700" YCoordinate="491" />
              <Coordinates XCoordinate="700" YCoordinate="462" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;postular-a-instrumento&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-02-27T17:32:43.4295407-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-02-27T17:32:43.4295407-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'