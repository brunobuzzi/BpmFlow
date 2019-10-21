evaluation
raiseInBlockExceptionIn: aBpmProcessInstance errorBlock: aBlock evaluationResult: aBpmCodeEvaluationResult
	"The receiver raise a proper exception that is handled in #defaultAction method of <EvaluationInBlockException>.
	Answer <aBpmCodeEvaluationResult>"

	EvaluationInBlockException new 
		bpmProcess: aBpmProcessInstance; 
		exceptionBlock: aBlock;
		evaluationResult: aBpmCodeEvaluationResult;
		signal: 'Error during condition evaluation';
		yourself.

	^aBpmCodeEvaluationResult