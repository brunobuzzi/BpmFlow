evaluation
raiseInBlockExceptionIn: aBpmProcessInstance errorBlock: aBlock evaluationResult: aBpmCodeEvaluationResult

	^EvaluationInBlockException new 
			bpmProcess: aBpmProcessInstance; 
			exceptionBlock: aBlock;
			evaluationResult: aBpmCodeEvaluationResult;
			signal: 'Error during condition evaluation';
			yourself