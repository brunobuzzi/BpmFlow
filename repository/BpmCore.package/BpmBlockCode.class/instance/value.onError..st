evaluation
value: blockArgumentObject onError: aBlock
	"The receiver evaluates the condition <conditionToRun> in the context of the object <blockArgumentObject>"

	self evaluateConditionIn: blockArgumentObject.

	evaluationResult hasException ifTrue: [aBlock value: evaluationResult exception].

	^evaluationResult result