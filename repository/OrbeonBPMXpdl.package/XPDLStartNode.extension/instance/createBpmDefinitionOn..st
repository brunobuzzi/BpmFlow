*orbeonBPMXpdl
createBpmDefinitionOn: aBpmProcessDefinition

	^(BpmStartEventDefinition process: aBpmProcessDefinition)
		name: self getName;
		yourself