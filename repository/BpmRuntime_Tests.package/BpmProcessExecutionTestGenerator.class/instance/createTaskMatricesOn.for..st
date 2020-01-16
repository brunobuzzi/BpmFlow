cg testExecuteProcess
createTaskMatricesOn: aStream for: aBpmProcessInstance

	aStream 
		tab;
		nextPutAll: 'processId := procInstance id.';
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