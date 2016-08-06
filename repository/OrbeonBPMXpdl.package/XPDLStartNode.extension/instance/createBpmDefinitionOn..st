*orbeonBPMXpdl
createBpmDefinitionOn: aBpmProcessDefinition
	| event |

	"^(BpmStartEventDefinition process: aBpmProcessDefinition)
		name: self getName;
		yourself"

	event := BpmEventDefinition process: aBpmProcessDefinition.
	event name: self getName;
		cycle: (BpmStartComponentDefinition event: event);
		type: (BpmNoneComponentDefinition event: event);
		tag: (BpmNormalTagComponentDefinition event: event);
		yourself.

	^event