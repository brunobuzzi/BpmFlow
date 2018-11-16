other
evaluateConditionIn: blockArgumentObject
	"The receiver evaluates the condition <conditionToRun> in the context of the object <blockArgumentObject>"
	| evaluation blockClosure blockEvaluation |

	evaluation := BpmCodeEvaluationResult new.

	[ 	blockClosure := (evaluationCode isOctetString) 
			ifTrue: [self evaluate: evaluationCode] 
			ifFalse: [evaluationCode]. "at this point the <evaluationCode> should be <aBlockClosure> otherwise it will set an exception in the receiver" 
		blockEvaluation := blockClosure value: blockArgumentObject.
		evaluation result: blockEvaluation] on: Exception do:[:error | EvaluationInBlockException signal: 'Error during condition evaluation' context: blockArgumentObject errorBlock: blockClosure].

	"the result is NOT a boolean value"
	evaluation resultNotBoolean ifTrue: [EvaluationNotBooleanException signal: 'Condition Result is not a Boolean' context: blockArgumentObject errorBlock: blockClosure].

	"the variable <blockClosure> MUST BE a BlockClosure because the <condition> could be a valid Smalltalk expression but NOT a block"
	blockClosure isBlock ifFalse: [EvaluationNotBlockException signal: 'Condition is not a Block' context: blockArgumentObject errorBlock: blockClosure].

	^evaluation