*bpmxpdl
createBpmDefinitionOn: aBpmProcessDefinition

	^(self getBpmClass newInProcess: aBpmProcessDefinition)
		name: self getName;
		setCondition: startCondition;
		isDefaultFlow: isDefaultFlow;
		yourself