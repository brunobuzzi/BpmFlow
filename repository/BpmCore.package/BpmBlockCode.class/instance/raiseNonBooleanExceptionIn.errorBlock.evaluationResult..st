evaluation
raiseNonBooleanExceptionIn: aBpmProcessInstance errorBlock: aBlock evaluationResult: aBpmCodeEvaluationResult

	^EvaluationNotBooleanException new 
			bpmProcess: aBpmProcessInstance; 
			exceptionBlock: aBlock;
			evaluationResult: aBpmCodeEvaluationResult;
			signal: 'Condition Result is not a Boolean';
			yourself