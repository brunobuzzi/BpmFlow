other
xpdlExample_smalltalksRegistration

^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="8148afcc-cedd-43aa-a3b5-02c2e139a8be" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2015-11-04T18:12:00.7664854-03:00</Created>
    <ModificationDate>2015-11-04T18:50:44.5377471-03:00</ModificationDate>
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
    <Pool Id="801429ce-765d-40a6-93dc-a165527f1f31" Name="Main Process" Process="8a78607f-5738-4c53-a530-623a6b9ebace" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="0" Width="0" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="a43d4dcf-8d80-4103-844f-92a8bbed537a" Name="registration" Process="0cf57dea-36b0-4563-bf15-82594a9b5357" BoundaryVisible="true">
      <Lanes>
        <Lane Id="36ce8d0d-803d-4c28-9a0a-295a6acd4f54" Name="anonymous" ParentPool="a43d4dcf-8d80-4103-844f-92a8bbed537a">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="95" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="20afc436-2f54-467b-98db-ce9efd585d1b" Name="analyser" ParentPool="a43d4dcf-8d80-4103-844f-92a8bbed537a">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="130" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="95" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="b0f9f1da-a184-4e87-8f37-0b380e0e8679" Name="security" ParentPool="a43d4dcf-8d80-4103-844f-92a8bbed537a">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="132" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="225" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="357" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <Associations />
  <Artifacts />
  <WorkflowProcesses>
    <WorkflowProcess Id="8a78607f-5738-4c53-a530-623a6b9ebace" Name="Main Process">
      <ProcessHeader>
        <Created>2015-11-04T18:51:02.2776143-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false},&quot;processProperties&quot;:{&quot;globalFormId&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;summaryFormId&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;mobileAccess&quot;:true}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="0cf57dea-36b0-4563-bf15-82594a9b5357" Name="registration">
      <ProcessHeader>
        <Created>2015-11-04T18:51:02.2776143-03:00</Created>
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
        <Activity Id="662b09c8-7052-447c-8302-e9aaf81c18fe" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="140" YCoordinate="57" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="0438b960-3704-41ad-b51d-a83d65be2042" Name="registration">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="264" YCoordinate="42" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="d9c190e4-4394-4158-a1d5-08ef8b45fed4" Name="analyze-data">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="264" YCoordinate="163" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="adfae70c-7c98-44ca-af98-4e11b836d5b4" Name="security-issue">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="433" YCoordinate="173" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="eebeaec2-eac8-4762-b7de-5567e47e3331" Name="accept-registration">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="111" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="526" YCoordinate="163" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="9b7c8145-b89b-4319-8ec8-886e04e956c5" Name="end 1">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="682" YCoordinate="178" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="24ec6aab-2be2-4090-b517-437b875c6cc0" Name="security-report">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="408" YCoordinate="289" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="3b4ef9a1-de03-4783-93c5-c849cf45a872" Name="end 2">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="588" YCoordinate="304" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="d3fa076a-9241-4d51-af06-8c6202cd6fed" From="662b09c8-7052-447c-8302-e9aaf81c18fe" To="0438b960-3704-41ad-b51d-a83d65be2042">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="170" YCoordinate="72" />
              <Coordinates XCoordinate="264" YCoordinate="72" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="d8944b28-c89b-41d0-b0bb-85d3aa5c1784" From="0438b960-3704-41ad-b51d-a83d65be2042" To="d9c190e4-4394-4158-a1d5-08ef8b45fed4">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="309" YCoordinate="102" />
              <Coordinates XCoordinate="309" YCoordinate="163" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="d2515cc3-8026-49d0-b8e2-c3841fe7723e" From="d9c190e4-4394-4158-a1d5-08ef8b45fed4" To="adfae70c-7c98-44ca-af98-4e11b836d5b4">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="354" YCoordinate="193" />
              <Coordinates XCoordinate="433" YCoordinate="193" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="2848d8db-a643-4897-bb48-cf7a8b6c9747" From="adfae70c-7c98-44ca-af98-4e11b836d5b4" To="eebeaec2-eac8-4762-b7de-5567e47e3331">
          <Condition Type="CONDITION">
            <Expression>[:form | form acceptOrReject = ''accept'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="473" YCoordinate="193" />
              <Coordinates XCoordinate="526" YCoordinate="193" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="def6083f-038c-4472-bde0-3118307d89bb" From="eebeaec2-eac8-4762-b7de-5567e47e3331" To="9b7c8145-b89b-4319-8ec8-886e04e956c5">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="637" YCoordinate="193" />
              <Coordinates XCoordinate="682" YCoordinate="193" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="42322d75-c5eb-43ff-8e2e-288a066fc13c" From="adfae70c-7c98-44ca-af98-4e11b836d5b4" To="24ec6aab-2be2-4090-b517-437b875c6cc0">
          <Condition Type="CONDITION">
            <Expression>[:form | form acceptOrReject = ''reject'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="453" YCoordinate="213" />
              <Coordinates XCoordinate="453" YCoordinate="289" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="aa3a6c29-42ed-4e80-bb0d-f00d3e70ba8b" From="24ec6aab-2be2-4090-b517-437b875c6cc0" To="3b4ef9a1-de03-4783-93c5-c849cf45a872">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="498" YCoordinate="319" />
              <Coordinates XCoordinate="588" YCoordinate="319" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false},&quot;processProperties&quot;:{&quot;globalFormId&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;summaryFormId&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;mobileAccess&quot;:true}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'