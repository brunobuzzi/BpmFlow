execution
generateNextTransitionsFrom: aBpmTaskInstance
	"The receiver generate the next tasks to be performed from the finalized task <aBpmTaskInstance>"
	| nextTransitions |

	self isRunning ifFalse: [^self]. "if the receiver is NOT running then no new transitions are created"

	"each transition can have a condition or not. 
	a transition is selected --> if has NO condition or the condition answer <true> after evaluation"
	nextTransitions := aBpmTaskInstance getOutTransitionDefinitions select: [:trDefinition | trDefinition hasCondition not or: [trDefinition evaluateConditionIn: self]].

	"after the selection of <BpmTransitionDefinition> the concrete transations are created <BpmTransitionInstance>"
	nextTransitions do: [:transitionDefinition | self createNewTransition: transitionDefinition from: aBpmTaskInstance].