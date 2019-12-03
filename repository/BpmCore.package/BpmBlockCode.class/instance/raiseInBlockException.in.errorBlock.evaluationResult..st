evaluation
raiseInBlockException: anException in: aBpmProcessInstance errorBlock: aBlock evaluationResult: aBpmCodeEvaluationResult
	"The receiver raise a proper exception that is handled in #defaultAction method of <EvaluationInBlockException>.
	Answer <aBpmCodeEvaluationResult>"
	| exception |

	exception := EvaluationInBlockException new 
		originalException: anException;
		bpmProcess: aBpmProcessInstance; 
		exceptionBlock: aBlock;
		evaluationResult: aBpmCodeEvaluationResult;
		signal: 'Error during condition evaluation: ', anException description;
		yourself.

	aBpmCodeEvaluationResult exception: exception.

	^aBpmCodeEvaluationResult