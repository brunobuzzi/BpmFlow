other
signal: aString context: aBpmProcessInstance errorBlock: errorBlock

	^(super new initialize
		bpmProcess: aBpmProcessInstance;
		exceptionBlock: errorBlock) signal: aString