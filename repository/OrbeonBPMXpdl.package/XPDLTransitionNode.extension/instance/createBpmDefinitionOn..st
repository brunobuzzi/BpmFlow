*orbeonBPMXpdl
createBpmDefinitionOn: aBpmProcessDefinition

	^(BpmTransitionDefinition process: aBpmProcessDefinition)
		name: self getName;
		setCondition: startCondition;
		isDefaultFlow: isDefaultFlow;
		yourself