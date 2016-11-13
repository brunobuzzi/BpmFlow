other
value: blockArgumentObject
	"The receiver evaluates the condition <conditionToRun> in the context of the object <blockArgumentObject>"

	^(self evaluateConditionIn: blockArgumentObject) result