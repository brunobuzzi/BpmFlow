*bpmxpdl
createBpmDefinitionOn: aBpmProcessDefinition
	| event |

	event := self getBpmClass newInProcess: aBpmProcessDefinition.
	event name: self getName;
		cycle: (self getCycleComponentDefinitionClass event: event);
		type: (self getBpmTypeComponentDefinitionClass event: event);
		tag: (self getBpmTagComponentDefinitionClass event: event);
		yourself.

	self setInformedTo: event.

	self getErrorCode ifNotNil: [:value | event type errorCode: value]. 

	^event