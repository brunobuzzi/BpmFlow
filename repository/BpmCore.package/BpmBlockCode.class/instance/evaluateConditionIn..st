evaluation
evaluateConditionIn: blockArgumentObject
	"The receiver evaluates the condition <conditionToRun> in the context of the object <blockArgumentObject>"
	| blockClosure blockEvaluation |

	evaluationResult := BpmCodeEvaluationResult new.

	[ blockClosure := (evaluationCode isOctetString) 
			ifTrue: [self evaluate: evaluationCode] 
			ifFalse: [evaluationCode]. "at this point the <evaluationCode> should be <aBlockClosure> otherwise it will set an exception in the receiver" 

		"the variable <blockClosure> MUST BE a BlockClosure because the <condition> could be a valid Smalltalk expression but NOT a block"
		blockClosure isBlock ifFalse: [^self raiseNonBlockExceptionIn: blockArgumentObject errorBlock: blockClosure evaluationResult: evaluationResult].

		blockEvaluation := blockClosure value: blockArgumentObject.
		evaluationResult result: blockEvaluation] on: Error do:[:error | ^self raiseInBlockException: error in: blockArgumentObject errorBlock: blockClosure evaluationResult: evaluationResult].

	"the result is NOT a boolean value"
	(evaluationResult resultIsKindOf: resultClass) ifFalse: [^self raiseIncorrectClassResultExceptionIn: blockArgumentObject errorBlock: blockClosure evaluationResult: evaluationResult].

	^evaluationResult