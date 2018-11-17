other
evaluateOutgoingTransitionsOn: aBpmProcessInstance
	"The receiver is Splitting and only one of all out going transition is going to be instantiated based on the evaluation of the condition"
	| nextTransitionDef |

	self getOutTransitionDefinitions do: [:trDefinition | | evaluationResult |
		(self defaultTransition == trDefinition) ifFalse: [ "default transition has no condition --> no evaluation"
			"if an exception occur when evaluating the condition --> the process is paused (CodeEvaluationException>>defaultAction)"
			"[evaluationResult := trDefinition evaluateConditionIn: aBpmProcessInstance] on: CodeEvaluationException do: [:ex | ^aBpmProcessInstance pauseProcess: nil]."
			evaluationResult := trDefinition evaluateConditionIn: aBpmProcessInstance.
			(nextTransitionDef isNil and: [evaluationResult result])
			ifTrue: [nextTransitionDef := trDefinition]. "if more than one condition is true --> answer the first one  (check <nextTransitionDef> ifNil)"
		].
	].

	^nextTransitionDef 
	ifNotNil: [aBpmProcessInstance createNewTransition: nextTransitionDef from: self]
	ifNil: [self defaultTransition 
					ifNotNil: [:trDefinition | aBpmProcessInstance createNewTransition: trDefinition from: self]
					ifNil: [self signal: (NoNextArtifactBpmException signal: 'No next Task to execute')]].