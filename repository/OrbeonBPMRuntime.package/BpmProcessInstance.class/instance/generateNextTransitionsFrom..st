execution
generateNextTransitionsFrom: aBpmTaskInstance
	"The receiver generate the next tasks to be performed from the finalized task <aBpmTaskInstance>"
	| nextTransitions |

	self isRunning ifFalse: [^ProcessNotRunningException signal: 'No new transitions can be created because the process is NOT [running]']. "if the receiver is NOT running then no new transitions are created"

	"each transition can have a condition or not. if a transition is selected --> it has NO condition or the condition answer <true> after evaluation.
	if an exception occur when evaluating the condition --> the process is paused (CodeEvaluationException>>defaultAction)"
	nextTransitions := OrderedCollection new.
	aBpmTaskInstance getOutTransitionDefinitions do: [:trDefinition | 
																		trDefinition hasCondition
																		"ifTrue: [[(trDefinition evaluateConditionIn: self) ifTrue: [nextTransitions add: trDefinition]] on: CodeEvaluationException do: [:ex | ^self pauseProcess: nil ]]"
																		ifTrue: [(trDefinition evaluateConditionIn: self) result ifTrue: [nextTransitions add: trDefinition]]
																		ifFalse: [nextTransitions add: trDefinition].
	].

	"after the selection of <BpmTransitionDefinition> the concrete transations are created <BpmTransitionInstance>"
	nextTransitions do: [:transitionDefinition | self createNewTransition: transitionDefinition from: aBpmTaskInstance].

	nextTransitions ifEmpty: [NoNextArtifactBpmException signal: 'No next Task to execute']