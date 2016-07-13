*orbeonBPMXpdl
createBpmDefinitionOn: aBpmProcessDefinition

	^(BpmIntermediateEventDefinition process: aBpmProcessDefinition)
		name: self getName;
		yourself