other
createBpmDefinitionOn: aBpmProcessDefinition
	| event |

	event := super createBpmDefinitionOn: aBpmProcessDefinition.

	((self valueOf: 'trigger') = 'Message') ifTrue: [event setAsAnonymousStart].

	^event