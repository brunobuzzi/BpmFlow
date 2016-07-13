*orbeonBPMXpdl
createBpmDefinitionOn: aBpmProcessDefinition

	^(BpmEndEventDefinition process: aBpmProcessDefinition)
		name: self getName;
		yourself