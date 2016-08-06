*orbeonBPMXpdl
createBpmDefinitionOn: aBpmProcessDefinition
	| event |

"	^(BpmIntermediateEventDefinition process: aBpmProcessDefinition)
		name: self getName;
		yourself"
	event := BpmEventDefinition process: aBpmProcessDefinition.
	event name: self getName;
		cycle: (BpmIntermediateComponentDefinition event: event);
		type: (BpmNoneComponentDefinition event: event);
		tag: (BpmNormalTagComponentDefinition event: event);
		yourself.

	^event