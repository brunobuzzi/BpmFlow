cg testExecuteProcess
create_testExecuteProcessMethods
	| codeStream testMethodName repo |

	codeStream := String new writeStream.
	repo := Dictionary new.
	testMethodName := self getTestExecuteProcessMethodNameFor: procInstance.
	self create_testExecuteProcessMethodNamed: testMethodName on: codeStream for: procInstance methodsRepository: repo.

	repo keysAndValuesDo: [:methodName :sourceString |
		self compile: codeStream readStream asMethodNamed: methodName asSymbol category: self categoryNameTest
	].
"
(BpmProcessExecutionTestGenerator newOn:
(BpmProcessDefinition getProcessInstanceWithId: 1500319936))
create_formInstanceMethods.
"