cg testExecuteProcess
createTemporaryVariablesOn: aStream for: aBpmProcessInstance

	aStream tab;
		nextPutAll: '|'.
	
	aStream 
		nextPutAll: ' subProcess';
		nextPutAll: ' currentTask';
		nextPutAll: ' gateway';
		nextPutAll: ' endArtifact';
		nextPutAll: ' processId';
		nextPutAll: ' currentProcessMatrix';
		nextPutAll: ' takenProcessMatrix';
		nextPutAll: ' finishedProcessMatrix'.

	aStream nextPutAll: ' |';
		cr;cr.