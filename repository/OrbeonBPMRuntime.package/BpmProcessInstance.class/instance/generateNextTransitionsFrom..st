running
generateNextTransitionsFrom: aBpmTaskInstance
	"The receiver generate the nexts task to be performed from the finalized task <aBpmTaskInstance>"
	| nextTransitions |

	"transitions can have evaluation conditions at any step"
	nextTransitions := aBpmTaskInstance getOutTransitionDefinitions
								select: [:trDefinition | 
									trDefinition hasCondition not or: [trDefinition evaluateConditionIn: self]].

	^nextTransitions collect: [:transitionDefinition | | newTransition |
			newTransition := self createNewTransition: transitionDefinition from: aBpmTaskInstance.
			newTransition].