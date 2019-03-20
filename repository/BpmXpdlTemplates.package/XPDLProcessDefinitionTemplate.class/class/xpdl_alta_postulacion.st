miem
xpdl_alta_postulacion

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="eb2e0edf-b55b-4bb7-91b7-3845e9fa6a8e" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2019-02-27T17:32:42.9118492-03:00</Created>
    <ModificationDate>2019-03-20T11:29:41.4944078-03:00</ModificationDate>
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
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="c3585c5c-ec6b-4c35-acf7-63322570ec3d" Name="postular-a-instrumento" Process="08f9f6ab-9043-41d5-94fd-7b2257a04fca" BoundaryVisible="true">
      <Lanes>
        <Lane Id="ecf79fc1-4926-4fb0-8f07-977275e426e1" Name="Empresa" ParentPool="c3585c5c-ec6b-4c35-acf7-63322570ec3d">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="301" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="b9a8b4db-5c86-4b21-b9a1-50b10597da14" Name="Operador" ParentPool="c3585c5c-ec6b-4c35-acf7-63322570ec3d">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="236" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="301" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="537" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="a4e9676e-94e4-4b95-8e18-42c96b0450df" Name="Main Process">
      <ProcessHeader>
        <Created>2019-03-20T11:30:03.0523431-03:00</Created>
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
        <Created>2019-03-20T11:30:03.0523431-03:00</Created>
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
              <Coordinates XCoordinate="133" YCoordinate="83" />
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
              <Coordinates XCoordinate="213" YCoordinate="68" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="seasideComponent" Value="WASeleccionarPostulacionForm" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="bd3738fc-5e9b-45be-a9d7-d9c3dc468853" Name="escenario-sin-medidas">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="155" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="418" YCoordinate="68" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="seasideComponent" Value="" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="893fa65f-546a-4415-87f8-b07739082914" Name="postulacion timer">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Timer">
              <TriggerTimer TimeDate="2019-03-13T00:00:00" />
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="438" YCoordinate="248" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;cost&quot;:0}" />
            <ExtendedAttribute Name="activationBlock" Value="&lt;p style=&quot;text-align:left;text-indent:0pt;margin:0pt 0pt 0pt 0pt;&quot;&gt;&lt;span style=&quot;color:#000000;background-color:transparent;font-family:Segoe UI;font-size:8pt;font-weight:normal;font-style:normal;&quot;&gt;[:lastExecutedTime :currentTime | (lastExecutedTime plusDays: 1) &amp;lt; currentTime]&lt;/span&gt;&lt;/p&gt;" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="38ec9492-af15-41ef-bc19-eb91ce724ee0" Name="escenario-con-medidas">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="141" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="556" YCoordinate="233" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
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
              <Coordinates XCoordinate="565" YCoordinate="374" />
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
              <Coordinates XCoordinate="375" YCoordinate="374" />
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
              <Coordinates XCoordinate="587" YCoordinate="486" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="aeee1e75-b365-40b9-b1c8-e0d73e6f8981" Name="aprobar-postulacion">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="142" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="129" YCoordinate="370" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="23933282-89ab-466e-9991-01f0801cd173" Name="aprobado?">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="328" YCoordinate="243" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="de05a3cd-72e0-44f6-9c06-7f265c6ded53" Name="avisar-plazo">
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
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="240" YCoordinate="474" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="dee50b6b-eae5-496c-8979-f9582af504a2" Name="aviso timer">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Timer" Target="aeee1e75-b365-40b9-b1c8-e0d73e6f8981" IsAttached="true">
              <TriggerTimer TimeDate="2019-03-13T00:00:00" />
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="22" Width="22" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="145" YCoordinate="430" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="activationBlock" Value="&lt;p style=&quot;text-align:left;text-indent:0pt;margin:0pt 0pt 0pt 0pt;&quot;&gt;&lt;span style=&quot;color:#000000;background-color:transparent;font-family:Segoe UI;font-size:8pt;font-weight:normal;font-style:normal;&quot;&gt;[:lastExecutedTime :currentTime | (lastExecutedTime plusDays: 1) &amp;lt; currentTime]&lt;/span&gt;&lt;/p&gt;" />
          </ExtendedAttributes>
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
              <Coordinates XCoordinate="371" YCoordinate="471" />
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
              <Coordinates XCoordinate="163" YCoordinate="98" />
              <Coordinates XCoordinate="213" YCoordinate="98" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="3492f69b-d557-4ce4-af8b-3e526b861324" From="289b2590-5443-4bce-8533-3af31d92de46" To="bd3738fc-5e9b-45be-a9d7-d9c3dc468853">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="349" YCoordinate="98" />
              <Coordinates XCoordinate="418" YCoordinate="98" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="cada6af5-c800-4b76-bd6a-b5136923c5a1" From="38ec9492-af15-41ef-bc19-eb91ce724ee0" To="69a22928-7144-454c-83bd-48714f1bfd48">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="626" YCoordinate="293" />
              <Coordinates XCoordinate="626" YCoordinate="374" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="b285fa36-8e4b-4696-8ec5-40ab0d5f92f3" From="69a22928-7144-454c-83bd-48714f1bfd48" To="6fb210fe-94ad-41e0-93e0-22e4ffb0dfc7">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="565" YCoordinate="404" />
              <Coordinates XCoordinate="500" YCoordinate="404" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="164ad1ca-ee9d-47f3-a9bf-2a85bb6e161b" From="bd3738fc-5e9b-45be-a9d7-d9c3dc468853" To="aeee1e75-b365-40b9-b1c8-e0d73e6f8981">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="495" YCoordinate="128" />
              <Coordinates XCoordinate="495" YCoordinate="164" />
              <Coordinates XCoordinate="200" YCoordinate="164" />
              <Coordinates XCoordinate="200" YCoordinate="370" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="5639f290-dd19-42cb-a553-9264df180187" From="aeee1e75-b365-40b9-b1c8-e0d73e6f8981" To="23933282-89ab-466e-9991-01f0801cd173">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="271" YCoordinate="400" />
              <Coordinates XCoordinate="299" YCoordinate="400" />
              <Coordinates XCoordinate="299" YCoordinate="263" />
              <Coordinates XCoordinate="328" YCoordinate="263" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="e090724a-c1e5-4f8a-9571-d9f9ce3c1458" From="893fa65f-546a-4415-87f8-b07739082914" To="38ec9492-af15-41ef-bc19-eb91ce724ee0">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="468" YCoordinate="263" />
              <Coordinates XCoordinate="556" YCoordinate="263" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="dd81a8c4-e8b0-404b-a85c-6a954acce9f5" From="23933282-89ab-466e-9991-01f0801cd173" To="893fa65f-546a-4415-87f8-b07739082914">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc aprobar]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="368" YCoordinate="263" />
              <Coordinates XCoordinate="438" YCoordinate="263" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="e5051e01-3d83-4ced-99a2-5b5598c8459d" From="23933282-89ab-466e-9991-01f0801cd173" To="bd3738fc-5e9b-45be-a9d7-d9c3dc468853">
          <Condition Type="CONDITION">
            <Expression>[:proc | proc aprobar not]</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="348" YCoordinate="243" />
              <Coordinates XCoordinate="348" YCoordinate="185.5" />
              <Coordinates XCoordinate="525" YCoordinate="185.5" />
              <Coordinates XCoordinate="525" YCoordinate="128" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="25af5333-ea18-4232-88f6-4076f6744c7c" From="dee50b6b-eae5-496c-8979-f9582af504a2" To="de05a3cd-72e0-44f6-9c06-7f265c6ded53">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="145" YCoordinate="430" />
              <Coordinates XCoordinate="145" YCoordinate="504" />
              <Coordinates XCoordinate="240" YCoordinate="504" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="e951b0a3-b7af-49b6-80b8-e2cc233ae027" From="6fb210fe-94ad-41e0-93e0-22e4ffb0dfc7" To="f23610fd-0f4b-4278-8b74-f2441ac99ede">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="437" YCoordinate="434" />
              <Coordinates XCoordinate="437" YCoordinate="471" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="3282051b-45ed-4d6a-8b63-283009bd33ee" From="f23610fd-0f4b-4278-8b74-f2441ac99ede" To="424f3a70-2e40-48f5-bee2-1b2a483882a2">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="504" YCoordinate="501" />
              <Coordinates XCoordinate="587" YCoordinate="501" />
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