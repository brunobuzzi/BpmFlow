*orbeonBPMXpdl
createBpmDefinitionOn: aBpmProcessDefinition

	^(BpmTransitionDefinition newInProcess: aBpmProcessDefinition)
		name: self getName;
		setCondition: startCondition;
		isDefaultFlow: isDefaultFlow;
		yourself