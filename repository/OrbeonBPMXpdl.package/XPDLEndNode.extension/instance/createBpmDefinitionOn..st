*orbeonBPMXpdl
createBpmDefinitionOn: aBpmProcessDefinition
	| event |
"	^(BpmEndEventDefinition process: aBpmProcessDefinition)
		name: self getName;
		yourself"

	event := BpmEventDefinition process: aBpmProcessDefinition.
	event name: self getName;
		cycle: (BpmEndComponentDefinition event: event);
		type: (BpmTerminationComponentDefinition event: event);
		tag: (BpmNormalTagComponentDefinition event: event);
		yourself.

	^event