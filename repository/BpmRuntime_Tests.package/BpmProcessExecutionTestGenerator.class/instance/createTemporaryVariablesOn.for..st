cg testExecuteProcess
createTemporaryVariablesOn: aStream for: aBpmProcessInstance

	aStream nextPutAll: '| '.
	
	aStream nextPutAll: ' currentTask';
		nextPutAll: ' gateway';
		nextPutAll: ' endArtifact';
		nextPutAll: ' processId';
		nextPutAll: ' currentProcessMatrix';
		nextPutAll: ' takenProcessMatrix';
		nextPutAll: ' finishedProcessMatrix'.

	aStream nextPutAll: ' |'.