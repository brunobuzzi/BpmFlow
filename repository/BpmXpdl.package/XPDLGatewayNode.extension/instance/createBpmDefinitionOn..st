*bpmxpdl
createBpmDefinitionOn: aBpmProcessDefinition

	^(self getGatewayClass newInProcess: aBpmProcessDefinition)
		name: self getName;
		yourself