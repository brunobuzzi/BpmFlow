condition evaluation
evaluateConditionIn: aBpmProcessInstance
	"The receiver evaluates the condition <conditionToRun> in the context of the object <aBpmProcessInstance>"
	| evaluationResult |

	evaluationResult := self basicEvaluateConditionIn: aBpmProcessInstance.

	evaluationResult hasException
	ifTrue: [evaluationResult addToCache].

	^evaluationResult result