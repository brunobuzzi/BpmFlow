visa process
xpdlDefinition_visa_apply

^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="46e112f9-4980-4e3f-afac-d994f19bec6e" Name="visa-apply" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2016-03-21T11:36:14.304377-03:00</Created>
    <ModificationDate>2016-04-09T19:15:26.9781894-03:00</ModificationDate>
    <Description>visa-apply</Description>
    <Documentation />
  </PackageHeader>
  <RedefinableHeader>
    <Author>Usuario</Author>
    <Version>1.0</Version>
    <Countrykey>CO</Countrykey>
  </RedefinableHeader>
  <ExternalPackages />
  <Pools>
    <Pool Id="68eca0e2-94e3-4fb2-85dc-fb4ae90bf422" Name="Main Process" Process="5f73033c-877f-45a3-a086-49f5922476a9" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="9d765082-798f-4914-af88-79f1349092bf" Name="visa-appliance" Process="0a6f4c00-cfca-4385-bef0-2c9002ba48bd" BoundaryVisible="true">
      <Lanes>
        <Lane Id="c6e9dca2-89ce-445a-94d6-c4a70cb2f8a8" Name="visa officer" ParentPool="9d765082-798f-4914-af88-79f1349092bf">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="219" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
        <Lane Id="cee8c23c-6cc5-4771-9e2a-a84a28268513" Name="visa manager" ParentPool="9d765082-798f-4914-af88-79f1349092bf">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="200" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="219" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="419" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="5f73033c-877f-45a3-a086-49f5922476a9" Name="Main Process">
      <ProcessHeader>
        <Created>2016-04-09T19:16:00.4665876-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-03-21T11:36:14.3128395-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-03-21T11:36:14.3128395-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="0a6f4c00-cfca-4385-bef0-2c9002ba48bd" Name="visa-appliance">
      <ProcessHeader>
        <Created>2016-04-09T19:16:00.4665876-03:00</Created>
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
        <Activity Id="854440b4-f5a9-4887-8205-6876f24a8b27" Name="visa apply start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="160" YCoordinate="62" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="9ba98e4a-cd0a-48ff-851c-3f417c02aebf" Name="citizen-appliance">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="122" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="291" YCoordinate="47" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="01e139b8-8cc6-4a82-aa65-a3a1710afec9" Name="check-basic-data">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="122" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="518" YCoordinate="47" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="previousFields" Value="citizenName citizenSurname citizenEmail citizenPhone citizenBirth gender originCountry citizenId" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="77d4dc20-c0f6-4e87-87bf-2b28f922cf2f" Name="accept basic data">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="398" YCoordinate="147" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="bafb54c7-ae94-4a71-ba1b-c919865f1564" Name="visa apply end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="663" YCoordinate="187" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="83a29e8b-e5f5-4169-90aa-e5913a11e50d" Name="check-previous-appliance">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="161" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="155" YCoordinate="264" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="previousFields" Value="citizenName citizenSurname originCountry citizenId" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="5526731c-8eb8-4350-bb5c-7a0242618fb9" Name="emit-visa">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="633" YCoordinate="357" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="previousFields" Value="citizenName citizenSurname originCountry citizenId" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="2ed5c416-5342-4f5b-93d8-04b88122319d" Name="home-office-check">
          <Description />
          <Implementation>
            <SubFlow Id="a5b187ab-0c31-47c8-85e8-48c6245bdc4e" />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="190.5" YCoordinate="357" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;,&quot;multiInstancePropertyGuid&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;groupByAttributesXPathList&quot;:[]}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="c19f3ef5-0a07-48d3-94b5-5071ac36fa0c" Name="analyze-appliance">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="118" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="361" YCoordinate="357" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="previousFields" Value="citizenName citizenSurname originCountry citizenId" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="b32ddded-6380-4112-8cf8-36e085e626a3" Name="granted">
          <Description />
          <Route />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="535" YCoordinate="367" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="cc467c38-b145-4d97-85a3-52a06ae08a93" From="854440b4-f5a9-4887-8205-6876f24a8b27" To="9ba98e4a-cd0a-48ff-851c-3f417c02aebf">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="190" YCoordinate="77" />
              <Coordinates XCoordinate="291" YCoordinate="77" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="804d8162-7062-4671-bc46-ce2f2489541b" From="9ba98e4a-cd0a-48ff-851c-3f417c02aebf" To="01e139b8-8cc6-4a82-aa65-a3a1710afec9">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="413" YCoordinate="77" />
              <Coordinates XCoordinate="518" YCoordinate="77" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="18e1da5e-26a3-447f-a8f0-b436ce21f36f" From="01e139b8-8cc6-4a82-aa65-a3a1710afec9" To="77d4dc20-c0f6-4e87-87bf-2b28f922cf2f">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="579" YCoordinate="107" />
              <Coordinates XCoordinate="579" YCoordinate="127" />
              <Coordinates XCoordinate="418" YCoordinate="127" />
              <Coordinates XCoordinate="418" YCoordinate="147" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="21c29d35-c0a9-486c-85ab-6b66df791800" From="77d4dc20-c0f6-4e87-87bf-2b28f922cf2f" To="bafb54c7-ae94-4a71-ba1b-c919865f1564">
          <Condition Type="CONDITION">
            <Expression>[:process | process checkResult = ''rejected'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="438" YCoordinate="167" />
              <Coordinates XCoordinate="678" YCoordinate="167" />
              <Coordinates XCoordinate="678" YCoordinate="187" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="650309b1-016f-417a-ba4e-12376af4ba0a" From="77d4dc20-c0f6-4e87-87bf-2b28f922cf2f" To="83a29e8b-e5f5-4169-90aa-e5913a11e50d">
          <Condition Type="CONDITION">
            <Expression>[:process | process checkResult = ''passed'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="398" YCoordinate="167" />
              <Coordinates XCoordinate="235" YCoordinate="167" />
              <Coordinates XCoordinate="235" YCoordinate="264" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="6b8b30f8-0bed-43cd-8bd2-ced51a43b40a" From="83a29e8b-e5f5-4169-90aa-e5913a11e50d" To="2ed5c416-5342-4f5b-93d8-04b88122319d">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="235" YCoordinate="324" />
              <Coordinates XCoordinate="235" YCoordinate="357" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="b1546742-424d-4c8c-8bce-ef08bb858566" From="5526731c-8eb8-4350-bb5c-7a0242618fb9" To="bafb54c7-ae94-4a71-ba1b-c919865f1564">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="678" YCoordinate="357" />
              <Coordinates XCoordinate="678" YCoordinate="217" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="c0564ab9-307b-4ef6-9060-0411925b8e29" From="2ed5c416-5342-4f5b-93d8-04b88122319d" To="c19f3ef5-0a07-48d3-94b5-5071ac36fa0c">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="280" YCoordinate="387" />
              <Coordinates XCoordinate="361" YCoordinate="387" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="8759c752-04d8-434b-bd66-6ef8400843e7" From="c19f3ef5-0a07-48d3-94b5-5071ac36fa0c" To="b32ddded-6380-4112-8cf8-36e085e626a3">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="479" YCoordinate="387" />
              <Coordinates XCoordinate="535" YCoordinate="387" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="337ccff4-7eab-4444-aea2-c866c0405be9" From="b32ddded-6380-4112-8cf8-36e085e626a3" To="5526731c-8eb8-4350-bb5c-7a0242618fb9">
          <Condition Type="CONDITION">
            <Expression>[:process | process applianceResult = ''approved'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="575" YCoordinate="387" />
              <Coordinates XCoordinate="633" YCoordinate="387" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="d7a62ef0-4e96-495e-9a43-d58e10db0995" From="b32ddded-6380-4112-8cf8-36e085e626a3" To="bafb54c7-ae94-4a71-ba1b-c919865f1564">
          <Condition Type="CONDITION">
            <Expression>[:process | process applianceResult ~= ''approved'']</Expression>
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="555" YCoordinate="367" />
              <Coordinates XCoordinate="555" YCoordinate="202" />
              <Coordinates XCoordinate="663" YCoordinate="202" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;enableAlarms&quot;:false,&quot;enableNotifications&quot;:false,&quot;creationDate&quot;:&quot;2016-03-21T11:36:14.3299372-03:00&quot;},&quot;processProperties&quot;:{&quot;versionCreationDate&quot;:&quot;2016-03-21T11:36:14.3299372-03:00&quot;,&quot;supportsScopes&quot;:false,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'