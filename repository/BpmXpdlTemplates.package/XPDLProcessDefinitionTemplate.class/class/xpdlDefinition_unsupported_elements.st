unsupported elements
xpdlDefinition_unsupported_elements

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="cb351f9b-75fb-4088-b054-aca709069b5b" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2018-11-06T15:51:26.451592-03:00</Created>
    <ModificationDate>2018-11-07T11:47:40.4992238-03:00</ModificationDate>
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
    <Pool Id="ac81eefb-6b87-4b46-8c6d-63104b148921" Name="Main Process" Process="a472a957-35cb-4115-a7d2-d4cb04d05c51" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="edfc6d64-ce2b-4c63-a0a7-2d2efc3af20b" Name="Unsupported Elements" Process="0b362591-c61f-4ecc-bf49-c6fb4e4623ce" BoundaryVisible="true">
      <Lanes>
        <Lane Id="f7b189e3-9192-485b-8293-ce86085531f4" Name="role1" ParentPool="edfc6d64-ce2b-4c63-a0a7-2d2efc3af20b">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="438" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="438" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <Associations>
    <Association Id="dc99e44b-eec8-4317-8f41-845c61868795" Source="efd1f37f-a2ef-4200-bd7a-a30effd1f719" Target="d028a071-ef49-4ce9-bfb3-4d14941a7d74">
      <ConnectorGraphicsInfos>
        <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
          <Coordinates XCoordinate="471" YCoordinate="198" />
          <Coordinates XCoordinate="529.5" YCoordinate="198" />
          <Coordinates XCoordinate="529.5" YCoordinate="163" />
          <Coordinates XCoordinate="588" YCoordinate="163" />
        </ConnectorGraphicsInfo>
      </ConnectorGraphicsInfos>
      <ExtendedAttributes />
    </Association>
  </Associations>
  <WorkflowProcesses>
    <WorkflowProcess Id="a472a957-35cb-4115-a7d2-d4cb04d05c51" Name="Main Process">
      <ProcessHeader>
        <Created>2018-11-07T11:48:00.9322818-03:00</Created>
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
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2018-11-06T15:51:26.4828368-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2018-11-06T15:51:26.4828368-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="0b362591-c61f-4ecc-bf49-c6fb4e4623ce" Name="Unsupported Elements">
      <ProcessHeader>
        <Created>2018-11-07T11:48:00.933282-03:00</Created>
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
        <Activity Id="caae65a8-fccd-4258-a35e-e3b0db5baeea" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="297" YCoordinate="51" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="ed694fa2-6d17-4556-b465-c826c9dfdde4" Name="task 1">
          <Description />
          <Implementation>
            <Task>
              <TaskService />
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="126" YCoordinate="142" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;cost&quot;:0,&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{}}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="93475189-9712-4feb-81b5-5ac764df3e80" Name="task 2">
          <Description />
          <Implementation>
            <Task>
              <TaskManual />
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="267" YCoordinate="140" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="c09231fd-f228-4e0d-9922-d4e5e4ca70c6" Name="task 3">
          <Description />
          <Implementation>
            <Task>
              <TaskBusinessRule BusinessRuleTaskImplementation="Unspecified" />
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="409" YCoordinate="138" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="2bab4401-2725-444d-9937-81d2d1e3980c" Name="complex gateway">
          <Description />
          <Route GatewayType="Complex" />
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="40" Width="40" BorderColor="-5855715" FillColor="-52">
              <Coordinates XCoordinate="151" YCoordinate="267" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="11abdd55-81d6-44fc-bdb9-9fbde4b2e0a2" Name="task 4">
          <Description />
          <Implementation>
            <Task>
              <TaskUser Implementation="Unspecified" />
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="124" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="306" YCoordinate="257" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;cost&quot;:0,&quot;priority&quot;:0,&quot;notifyOnMobile&quot;:false,&quot;isSingleton&quot;:false,&quot;isConditional&quot;:false}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="8bcf1fb2-8e01-4375-953b-bc7e4e21179d" Name="task 5">
          <Description />
          <Implementation>
            <Task>
              <TaskReceive Instantiate="false" />
            </Task>
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="145" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="309" YCoordinate="348" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="b0c01c3a-d439-43c6-a4f5-ae8b6f3d42fe" Name="error t3">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Error" Target="c09231fd-f228-4e0d-9922-d4e5e4ca70c6" IsAttached="true">
              <ResultError ErrorCode="" />
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="22" Width="22" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="425" YCoordinate="187" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="09fae371-0a17-470d-9f49-16b7f2d48a12" Name="end">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="641" YCoordinate="319" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="7196339d-a8c5-47dc-ba6f-9248f609e4ce" Name="conditional t5">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Conditional" Target="8bcf1fb2-8e01-4375-953b-bc7e4e21179d" IsAttached="true">
              <TriggerConditional>
                <Expression />
              </TriggerConditional>
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="22" Width="22" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="314" YCoordinate="397" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="4ed842b2-b43f-4ece-acab-812467ade260" Name="signal t5">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Signal" Target="8bcf1fb2-8e01-4375-953b-bc7e4e21179d" IsAttached="true">
              <TriggerResultSignal />
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="22" Width="22" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="342" YCoordinate="397" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="25fb5e36-833a-49fa-858c-81edd75a1d26" Name="multiple t5">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Multiple" Target="8bcf1fb2-8e01-4375-953b-bc7e4e21179d" IsAttached="true">
              <TriggerIntermediateMultiple>
                <TriggerResultMessage>
                  <Message Id="b1f4fc9b-3748-4206-84dc-9b96d5174e4f" />
                </TriggerResultMessage>
                <TriggerTimer />
                <TriggerResultCompensation WaitForCompletion="false" />
                <TriggerConditional>
                  <Expression />
                </TriggerConditional>
              </TriggerIntermediateMultiple>
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="22" Width="22" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="370" YCoordinate="397" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="a7a370a5-cc06-4299-92a8-46a0bf696fc5" Name="escalation t4">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Escalation" Target="11abdd55-81d6-44fc-bdb9-9fbde4b2e0a2" IsAttached="true">
              <TriggerEscalation />
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="22" Width="22" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="333" YCoordinate="306" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="d619474c-96d9-43f3-90d8-911a1595fdd2" Name="message t2">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Message" Target="93475189-9712-4feb-81b5-5ac764df3e80" IsAttached="true">
              <TriggerResultMessage>
                <Message Id="27d6f322-fe1a-4a72-b456-3ffa4ae54d78" />
              </TriggerResultMessage>
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="22" Width="22" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="277" YCoordinate="200" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="1a50dabe-f16a-436e-9c6f-147655c9ecd3" Name="parallel multiple t4">
          <Description />
          <Event>
            <IntermediateEvent Trigger="ParallelMultiple" Target="11abdd55-81d6-44fc-bdb9-9fbde4b2e0a2" IsAttached="true">
              <TriggerIntermediateMultiple>
                <TriggerResultMessage>
                  <Message Id="032a5fe2-8df0-4cbe-855f-32424268e5bb" />
                </TriggerResultMessage>
                <TriggerTimer />
                <TriggerResultCompensation WaitForCompletion="false" />
                <TriggerConditional>
                  <Expression />
                </TriggerConditional>
              </TriggerIntermediateMultiple>
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="22" Width="22" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="320" YCoordinate="317" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="d028a071-ef49-4ce9-bfb3-4d14941a7d74" IsForCompensation="true" Name="task 6">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="588" YCoordinate="133" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="efd1f37f-a2ef-4200-bd7a-a30effd1f719" Name="compensation t3">
          <Description />
          <Event>
            <IntermediateEvent Trigger="Compensation" Target="c09231fd-f228-4e0d-9922-d4e5e4ca70c6" IsAttached="true">
              <TriggerResultCompensation WaitForCompletion="false" />
            </IntermediateEvent>
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="22" Width="22" BorderColor="-6909623" FillColor="-66833">
              <Coordinates XCoordinate="460" YCoordinate="187" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="8b366a3f-d6a1-4a51-b474-3a384a2c9bf2" From="caae65a8-fccd-4258-a35e-e3b0db5baeea" To="ed694fa2-6d17-4556-b465-c826c9dfdde4">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="297" YCoordinate="66" />
              <Coordinates XCoordinate="171" YCoordinate="66" />
              <Coordinates XCoordinate="171" YCoordinate="142" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="22d19196-b268-4625-92ca-0a0c1ef09d18" From="caae65a8-fccd-4258-a35e-e3b0db5baeea" To="93475189-9712-4feb-81b5-5ac764df3e80">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="312" YCoordinate="81" />
              <Coordinates XCoordinate="312" YCoordinate="140" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="9fa211fd-b480-46fb-9f24-f1e627204389" From="caae65a8-fccd-4258-a35e-e3b0db5baeea" To="c09231fd-f228-4e0d-9922-d4e5e4ca70c6">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="327" YCoordinate="66" />
              <Coordinates XCoordinate="454" YCoordinate="66" />
              <Coordinates XCoordinate="454" YCoordinate="138" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="7a3d22f5-d82d-4368-ab0f-eb1c525f2eae" From="ed694fa2-6d17-4556-b465-c826c9dfdde4" To="2bab4401-2725-444d-9937-81d2d1e3980c">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="171" YCoordinate="202" />
              <Coordinates XCoordinate="171" YCoordinate="267" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="4909ed6b-7d1c-4c31-82b5-3b0710708f20" From="2bab4401-2725-444d-9937-81d2d1e3980c" To="11abdd55-81d6-44fc-bdb9-9fbde4b2e0a2">
          <Condition Type="CONDITION">
            <Expression />
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="191" YCoordinate="287" />
              <Coordinates XCoordinate="306" YCoordinate="287" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="0d93d2f1-a7db-4eaf-bb75-5a0446daeb33" From="2bab4401-2725-444d-9937-81d2d1e3980c" To="8bcf1fb2-8e01-4375-953b-bc7e4e21179d">
          <Condition Type="CONDITION">
            <Expression />
          </Condition>
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="191" YCoordinate="287" />
              <Coordinates XCoordinate="221.5" YCoordinate="287" />
              <Coordinates XCoordinate="221.5" YCoordinate="378" />
              <Coordinates XCoordinate="309" YCoordinate="378" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="7f2c9274-5df9-4988-8d2e-849cb0ba4bfc" From="b0c01c3a-d439-43c6-a4f5-ae8b6f3d42fe" To="11abdd55-81d6-44fc-bdb9-9fbde4b2e0a2">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="436" YCoordinate="198" />
              <Coordinates XCoordinate="436" YCoordinate="227.5" />
              <Coordinates XCoordinate="368" YCoordinate="227.5" />
              <Coordinates XCoordinate="368" YCoordinate="257" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="537dca12-c1ae-46bd-9bdd-294033c7c7c6" From="7196339d-a8c5-47dc-ba6f-9248f609e4ce" To="09fae371-0a17-470d-9f49-16b7f2d48a12">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="325" YCoordinate="408" />
              <Coordinates XCoordinate="325" YCoordinate="451" />
              <Coordinates XCoordinate="656" YCoordinate="451" />
              <Coordinates XCoordinate="656" YCoordinate="349" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="46ebab66-f4c4-41fb-9c9d-f24c9036d986" From="4ed842b2-b43f-4ece-acab-812467ade260" To="09fae371-0a17-470d-9f49-16b7f2d48a12" Name="">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="353" YCoordinate="408" />
              <Coordinates XCoordinate="353" YCoordinate="438" />
              <Coordinates XCoordinate="656" YCoordinate="438" />
              <Coordinates XCoordinate="656" YCoordinate="349" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="2489720f-dc5d-433e-9682-c3192032941a" From="25fb5e36-833a-49fa-858c-81edd75a1d26" To="09fae371-0a17-470d-9f49-16b7f2d48a12">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="381" YCoordinate="408" />
              <Coordinates XCoordinate="381" YCoordinate="425" />
              <Coordinates XCoordinate="656" YCoordinate="425" />
              <Coordinates XCoordinate="656" YCoordinate="349" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="944af38d-df39-49e7-b5b8-32fdf73badb2" From="a7a370a5-cc06-4299-92a8-46a0bf696fc5" To="09fae371-0a17-470d-9f49-16b7f2d48a12">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="344" YCoordinate="317" />
              <Coordinates XCoordinate="344" YCoordinate="334" />
              <Coordinates XCoordinate="641" YCoordinate="334" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="0da81d73-854f-4bd6-94fc-820eca83f9e6" From="d619474c-96d9-43f3-90d8-911a1595fdd2" To="11abdd55-81d6-44fc-bdb9-9fbde4b2e0a2">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="277" YCoordinate="200" />
              <Coordinates XCoordinate="277" YCoordinate="217" />
              <Coordinates XCoordinate="368" YCoordinate="217" />
              <Coordinates XCoordinate="368" YCoordinate="257" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="d44f912a-cdf6-4d45-b42e-f5887ce85d43" From="1a50dabe-f16a-436e-9c6f-147655c9ecd3" To="09fae371-0a17-470d-9f49-16b7f2d48a12">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <Coordinates XCoordinate="320" YCoordinate="317" />
              <Coordinates XCoordinate="320" YCoordinate="334" />
              <Coordinates XCoordinate="641" YCoordinate="334" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2018-11-06T15:51:26.5141114-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2018-11-06T15:51:26.5141114-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'