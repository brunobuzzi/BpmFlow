evaluation
raiseIncorrectClassResultExceptionIn: aBpmProcessInstance errorBlock: aBlock evaluationResult: aBpmCodeEvaluationResult
	"The receiver raise a proper exception that is handled in #defaultAction method of <EvaluationIncorrectClassException>.
	Answer <aBpmCodeEvaluationResult>"

	EvaluationIncorrectClassException new 
		bpmProcess: aBpmProcessInstance; 
		exceptionBlock: aBlock;
		evaluationResult: aBpmCodeEvaluationResult;
		signal: 'Block Result is of incorrect class';
		yourself.

	^aBpmCodeEvaluationResult