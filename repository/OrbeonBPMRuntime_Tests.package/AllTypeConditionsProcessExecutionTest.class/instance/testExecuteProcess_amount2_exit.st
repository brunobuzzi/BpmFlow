test
testExecuteProcess_amount2_exit

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	self executeProcess: procInstance withAmount: '38'