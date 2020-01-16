cg testExecuteProcess
createTaskMatricesOn: aStream for: aBpmProcessInstance

	aStream 
		tab;
		nextPutAll: 'processId := ', (aBpmProcessInstance isTopProcess ifTrue: ['procInstance'] ifFalse: ['subProcess']),' id.';
		cr;
		tab;
		nextPutAll: 'currentProcessMatrix := procInstance getAvailableProcessMatrix.';
		cr;
		tab;
		nextPutAll: 'takenProcessMatrix := procInstance getTakenProcessMatrix.';
		cr;
		tab;
		nextPutAll: 'finishedProcessMatrix := procInstance getFinishedProcessMatrix.';
		cr.