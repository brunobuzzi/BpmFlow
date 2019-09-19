evaluation
evaluateConditionIn: blockArgumentObject
	"The receiver evaluates the condition <conditionToRun> in the context of the object <blockArgumentObject>"
	| evaluation blockClosure blockEvaluation |

	evaluation := BpmCodeEvaluationResult new.

	[ blockClosure := (evaluationCode isOctetString) 
			ifTrue: [self evaluate: evaluationCode] 
			ifFalse: [evaluationCode]. "at this point the <evaluationCode> should be <aBlockClosure> otherwise it will set an exception in the receiver" 
		blockEvaluation := blockClosure value: blockArgumentObject.
		evaluation result: blockEvaluation] on: Exception do:[:error | self raiseInBlockExceptionIn: blockArgumentObject errorBlock: blockClosure evaluationResult: evaluation].

	"the result is NOT a boolean value"
	(evaluation resultIsKindOf: resultClass) ifFalse: [self raiseIncorrectClassResultExceptionIn: blockArgumentObject errorBlock: blockClosure evaluationResult: evaluation].

	"the variable <blockClosure> MUST BE a BlockClosure because the <condition> could be a valid Smalltalk expression but NOT a block"
	blockClosure isBlock ifFalse: [self raiseNonBlockExceptionIn: blockArgumentObject errorBlock: blockClosure evaluationResult: evaluation].

	^evaluation