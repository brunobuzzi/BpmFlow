other
evaluateConditionIn: aBpmProcessInstance
	"The receiver evaluates the condition <conditionToRun> in the context of the object <aBpmProcessInstance>"
	| evaluation blockClosure blockEvaluation |

	evaluation := BpmCodeEvaluationResult new.

	[ 	blockClosure := self evaluate: evaluationCode. "aBlockClosure instance is created"
		blockEvaluation := blockClosure value: aBpmProcessInstance.
		evaluation result: blockEvaluation] on: Error do:[:error | evaluation exception: error].

	"evaluation does not raised anException but the result is NOT a boolean value"
	(evaluation hasNoException and: [evaluation resultNotBoolean]) 
	ifTrue: [evaluation exception: EvaluationNotBooleanException new].

	"the variable <blockClosure> MUST BE a BlockClosure because the <condition> could be a valid Smalltalk expression but NOT a block"
	blockClosure isBlock
	ifFalse: [evaluation exception: EvaluationNotBlockException new].

	^evaluation