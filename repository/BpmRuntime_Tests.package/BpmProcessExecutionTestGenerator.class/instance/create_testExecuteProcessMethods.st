cg testExecuteProcess
create_testExecuteProcessMethods
	| codeStream testMethodName |

	codeStream := String new writeStream.
	testMethodName := self getTestExecuteProcessMethodNameFor: procInstance.
	self create_testExecuteProcessMethodNamed: testMethodName on: codeStream for: procInstance methodsRepository: Dictionary new.

	^self compile: codeStream asMethodNamed: testMethodName asSymbol
"
(BpmProcessExecutionTestGenerator newOn:
(BpmProcessDefinition getProcessInstanceWithId: 1500319936))
create_formInstanceMethods.
"