other
evaluateOutgoingTransitionsOn: aBpmProcessInstance
	"The receiver is Splitting and only one of all out going transition is going to be instantiated based on the evaluation of the condition"
	| nextTransitionDef |

	self getOutTransitionDefinitions do: [:trDefinition | 
		(nextTransitionDef isNil and: [trDefinition evaluateConditionIn: aBpmProcessInstance])
		ifTrue: [nextTransitionDef := trDefinition]. "if more than one condition is true --> answer the first one  (check <nextTransitionDef> ifNil)"
	].

	^nextTransitionDef 
	ifNotNil: [aBpmProcessInstance createNewTransition: nextTransitionDef from: self]
	ifNil: [self defaultTransition 
					ifNotNil: [:trDefinition | aBpmProcessInstance createNewTransition: trDefinition from: self]
					ifNil: [self signal: (NoNextArtifactBpmException signal: 'No next Task to execute')]].