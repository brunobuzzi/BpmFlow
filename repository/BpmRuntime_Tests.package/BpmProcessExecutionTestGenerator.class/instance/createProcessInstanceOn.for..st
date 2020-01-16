cg testExecuteProcess
createProcessInstanceOn: aStream for: aBpmProcessInstance
	| variableName |

	variableName := aBpmProcessInstance isTopProcess ifTrue: ['procInstance'] ifFalse: ['subProcess'].

	aStream nextPutAll: variableName, ' := procDefinition createAndStartProcessInstance: (self getUserNamed: ', self getDefaultUserName, ').'.