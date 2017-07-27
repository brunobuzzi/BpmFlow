*orbeonBPMXpdl
createBpmDefinitionOn: aBpmProcessDefinition
	| event |

	event := BpmEventDefinition process: aBpmProcessDefinition.
	event name: self getName;
		cycle: (self getCycleComponentDefinitionClass event: event);
		type: (self getBpmTypeComponentDefinitionClass event: event);
		tag: (self getBpmTagComponentDefinitionClass event: event);
		yourself.

	^event