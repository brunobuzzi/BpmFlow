cg testExecuteProcess
createProcessInstanceOn: aStream for: aBpmProcessInstance

	aBpmProcessInstance isTopProcess
	ifTrue: [aStream 
					tab;
					nextPutAll: 'procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: ', self getDefaultUserName, ').';
					cr.
	]
	ifFalse: [aStream 
					tab;
					nextPutAll: 'subProcess := procInstance getLastSubProcessNamed: ', aBpmProcessInstance processName quoted,' ifNone: [self assert: false].';
					cr.
	]