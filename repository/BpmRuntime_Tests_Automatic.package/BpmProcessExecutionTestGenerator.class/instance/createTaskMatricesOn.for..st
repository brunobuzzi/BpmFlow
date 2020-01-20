cg testExecuteProcess
createTaskMatricesOn: aStream for: aBpmProcessInstance
	| variableName |

	variableName := aBpmProcessInstance isTopProcess ifTrue: ['procInstance'] ifFalse: ['subProcess'].
	aStream 
		tab;
		nextPutAll: 'processId := ', variableName,' id.';
		cr;
		tab;
		nextPutAll: 'currentProcessMatrix := ', variableName,' getAvailableProcessMatrix.';
		cr;
		tab;
		nextPutAll: 'takenProcessMatrix := ', variableName,' getTakenProcessMatrix.';
		cr;
		tab;
		nextPutAll: 'finishedProcessMatrix := ', variableName,' getFinishedProcessMatrix.';
		cr.