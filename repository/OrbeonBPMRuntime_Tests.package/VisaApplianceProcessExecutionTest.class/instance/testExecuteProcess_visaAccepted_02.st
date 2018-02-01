test
testExecuteProcess_visaAccepted_02

	procInstance := procDefinition createAndStartProcessInstance: (users at: 'andrew vo').

	self startFinishAndTestProcess: procInstance.