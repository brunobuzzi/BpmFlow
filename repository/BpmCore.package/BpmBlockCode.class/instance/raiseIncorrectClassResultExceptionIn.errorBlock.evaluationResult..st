evaluation
raiseIncorrectClassResultExceptionIn: aBpmProcessInstance errorBlock: aBlock evaluationResult: aBpmCodeEvaluationResult

	^EvaluationIncorrectClassException new 
			bpmProcess: aBpmProcessInstance; 
			exceptionBlock: aBlock;
			evaluationResult: aBpmCodeEvaluationResult;
			signal: 'Block Result is of incorrect class';
			yourself