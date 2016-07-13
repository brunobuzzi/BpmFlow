*orbeonBPMXpdl
createBpmDefinitionOn: aBpmProcessDefinition

	^(self getGatewayClass process: aBpmProcessDefinition)
		name: self getName;
		yourself