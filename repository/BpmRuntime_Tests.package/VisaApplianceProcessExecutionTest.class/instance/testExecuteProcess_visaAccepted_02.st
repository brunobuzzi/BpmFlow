test
testExecuteProcess_visaAccepted_02

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').

	self startAssignFinishAndTestProcess: procInstance.