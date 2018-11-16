condition evaluation
basicEvaluateConditionIn: aBpmProcessInstance
	"The receiver evaluates the (condition) instance variable <conditionToRun> <aBpmCodeCondition> in the context of the object <aBpmProcessInstance>"

	^conditionToRun evaluateConditionIn: aBpmProcessInstance