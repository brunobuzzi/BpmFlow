other
evaluateOutgoingTransitionsOn: aBpmProcessInstance
	"The receiver is Splitting and only one of all out going transition is going to be instantiated based on the evaluation of the condition"
	| nextTransitionsDef |

	nextTransitionsDef := OrderedCollection new.

	self getOutTransitionDefinitions do: [:trDefinition | | evaluationResult |
		(self defaultTransition == trDefinition) ifFalse: [ "default transition has no condition --> no evaluation"
			"if an exception occur when evaluating the condition --> the process is paused (CodeEvaluationException>>defaultAction)"
			"[evaluationResult := trDefinition evaluateConditionIn: aBpmProcessInstance] on: CodeEvaluationException do: [:ex | ^aBpmProcessInstance pauseProcess: nil ]."
			evaluationResult := trDefinition evaluateConditionIn: aBpmProcessInstance.
			evaluationResult result ifTrue: [nextTransitionsDef add: trDefinition]. 
		].
	].

	nextTransitionsDef do: [:each | aBpmProcessInstance createNewTransition: each from: self].

	nextTransitionsDef isEmpty 
	ifTrue: [self defaultTransition 
					ifNotNil: [:trDefinition | aBpmProcessInstance createNewTransition: trDefinition from: self]
					ifNil: [self signal: (NoNextArtifactException on: self signal: 'No next Task to execute')]].