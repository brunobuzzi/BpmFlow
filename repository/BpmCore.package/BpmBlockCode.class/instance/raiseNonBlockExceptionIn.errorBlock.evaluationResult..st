evaluation
raiseNonBlockExceptionIn: aBpmProcessInstance errorBlock: aBlock evaluationResult: aBpmCodeEvaluationResult
	"The receiver raise a proper exception that is handled in #defaultAction method of <EvaluationNotBlockException>.
	Answer <aBpmCodeEvaluationResult>"
	| exception |

	exception := EvaluationNotBlockException new 
		bpmProcess: aBpmProcessInstance; 
		blockSource: aBlock; "<aBlock> is not a Smalltalk Block --> the use of #exceptionBlock: is avoided (because #exceptionBlock: send #blockSource to the block)"
		evaluationResult: aBpmCodeEvaluationResult;
		signal: 'Condition is not a Block';
		yourself.

	aBpmCodeEvaluationResult exception: exception.

	^aBpmCodeEvaluationResult