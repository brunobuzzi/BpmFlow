visa process
xpdlDefinition_check_financial_data

^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="81d1922c-d685-41df-9fcd-4ff496379ce0" Name="check-financial-data" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-03-21T12:09:33.2514073-03:00</Created>
    <ModificationDate>2016-04-09T19:15:27.1523051-03:00</ModificationDate>
    <Description>check-financial-data</Description>
    <Documentation />
  </PackageHeader>
  <RedefinableHeader>
    <Author>Usuario</Author>
    <Version>1.0</Version>
    <Countrykey>CO</Countrykey>
  </RedefinableHeader>
  <ExternalPackages />
  <Pools>
    <Pool Id="7bda245d-78b1-41a7-8c0f-51f0ee9d5df3" Name="Main Process" Process="91298a5e-f081-44d5-a000-1b61a6a91ddd" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="7f38d6ef-f96c-4853-8fe2-b6e1b942c8c7" Name="check-financial-data" Process="cacbedc3-3bff-41d4-b4fd-6d8f76ae7b82" BoundaryVisible="true">
      <Lanes>
        <Lane Id="a6479c74-6c20-4887-afe8-42e0316128ac" Name="finance officer" ParentPool="7f38d6ef-f96c-4853-8fe2-b6e1b942c8c7">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="128" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="144c74ab-e671-4f80-b0fd-4a169ed2f16d" Name="properties officer" ParentPool="7f38d6ef-f96c-4853-8fe2-b6e1b942c8c7">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="129" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="128" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="38f4e960-d396-450b-8da7-e3ea0c4870e7" Name="debts officer" ParentPool="7f38d6ef-f96c-4853-8fe2-b6e1b942c8c7">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="120" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="257" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="377" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="29" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="91298a5e-f081-44d5-a000-1b61a6a91ddd" Name="Main Process">
      <ProcessHeader>
        <Created>2016-04-09T19:16:00.5086183-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-03-21T12:09:33.2524084-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-03-21T12:09:33.2524084-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="cacbedc3-3bff-41d4-b4fd-6d8f76ae7b82" Name="check-financial-data">
      <ProcessHeader>
        <Created>2016-04-09T19:16:00.5086183-03:00</Created>
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
        <Activity Id="88488b0a-3390-460e-b9ce-bda6a9383dcf" Name="start financial check">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="130" YCoordinate="62" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="6784a0c8-3bba-4d72-9e4b-c0ad7b0eb6ba" Name="check-accounts">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="91" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="238" YCoordinate="47" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="previousFields" Value="citizenName citizenSurname originCountry citizenId" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="60c4747f-9802-4113-b711-89bd429310b8" Name="check-properties">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="124" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="221.5" YCoordinate="186" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="previousFields" Value="citizenName citizenSurname originCountry citizenId" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="4cd36a42-8401-410b-a100-aeda0c619caf" Name="check-debts">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="238.5" YCoordinate="322" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="previousFields" Value="citizenName citizenSurname originCountry citizenId" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="60f121a7-dc61-482a-b533-6a567a2a383f" Name="end financial check">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="646" YCoordinate="70" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="84abf1cf-5939-4bae-b4a1-c9c0cfa68018" Name="financial-report">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="127" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="429" YCoordinate="55" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="previousFields" Value="citizenName citizenSurname originCountry citizenId" />
          </ExtendedAttributes>
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="f690680e-c8dc-47d1-b361-2c8414c57f92" From="88488b0a-3390-460e-b9ce-bda6a9383dcf" To="6784a0c8-3bba-4d72-9e4b-c0ad7b0eb6ba">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="160" YCoordinate="77" />
              <Coordinates XCoordinate="238" YCoordinate="77" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="4c3b951c-fd01-4dfe-9015-84ef3e406f15" From="6784a0c8-3bba-4d72-9e4b-c0ad7b0eb6ba" To="60c4747f-9802-4113-b711-89bd429310b8">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="283" YCoordinate="107" />
              <Coordinates XCoordinate="283" YCoordinate="186" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="c0afd4ec-3e41-4220-8df7-e8669434f046" From="60c4747f-9802-4113-b711-89bd429310b8" To="4cd36a42-8401-410b-a100-aeda0c619caf">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="283" YCoordinate="246" />
              <Coordinates XCoordinate="283" YCoordinate="322" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="cc2455a5-86fa-4de5-9afa-04cc0f9586d3" From="4cd36a42-8401-410b-a100-aeda0c619caf" To="84abf1cf-5939-4bae-b4a1-c9c0cfa68018">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="328" YCoordinate="352" />
              <Coordinates XCoordinate="397" YCoordinate="352" />
              <Coordinates XCoordinate="397" YCoordinate="85" />
              <Coordinates XCoordinate="429" YCoordinate="85" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="2b3cf6be-453a-4402-9abb-ff963cb9237d" From="84abf1cf-5939-4bae-b4a1-c9c0cfa68018" To="60f121a7-dc61-482a-b533-6a567a2a383f">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="556" YCoordinate="85" />
              <Coordinates XCoordinate="646" YCoordinate="85" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-03-21T12:09:33.2524084-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-03-21T12:09:33.2524084-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'