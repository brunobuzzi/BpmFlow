evaluation
raiseNonBlockExceptionIn: aBpmProcessInstance errorBlock: aBlock evaluationResult: aBpmCodeEvaluationResult

	^EvaluationNotBlockException new 
			bpmProcess: aBpmProcessInstance; 
			exceptionBlock: aBlock;
			evaluationResult: aBpmCodeEvaluationResult;
			signal: 'Condition is not a Block';
			yourself