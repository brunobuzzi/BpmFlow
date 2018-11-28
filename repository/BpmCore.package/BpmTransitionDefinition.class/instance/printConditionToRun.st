Accessing
printConditionToRun
	
	conditionToRun ifNil: [^''].

	^conditionToRun evaluationCode