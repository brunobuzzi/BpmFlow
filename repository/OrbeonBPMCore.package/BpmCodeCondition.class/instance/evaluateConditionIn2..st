other
evaluateConditionIn2: blockArgumentObject
	"The receiver evaluates the condition <conditionToRun> in the context of the object <blockArgumentObject>"
	| evaluation blockClosure blockEvaluation |

	evaluation := BpmCodeEvaluationResult new.

	[ 	blockClosure := (evaluationCode class == String) 
			ifTrue: [self evaluate: evaluationCode] 
			ifFalse: [evaluationCode]. "at this point the <evaluationCode> should be <aBlockClosure> otherwise it will set an exception in the receiver" 
		blockEvaluation := blockClosure value: blockArgumentObject.
		evaluation result: blockEvaluation] on: Error do:[:error | evaluation exception: error].

	"evaluation does not raised anException but the result is NOT a boolean value"
	(evaluation hasNoException and: [evaluation resultNotBoolean]) 
	ifTrue: [evaluation exception: EvaluationNotBooleanException new].

	"the variable <blockClosure> MUST BE a BlockClosure because the <condition> could be a valid Smalltalk expression but NOT a block"
	blockClosure isBlock
	ifFalse: [evaluation exception: EvaluationNotBlockException new].

	^evaluation