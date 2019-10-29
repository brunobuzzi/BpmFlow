tests
testStopZnShExist

	self assert: (GsFile existsOnServer: self gsBpmFlowPath, '/scripts/stop-zn.sh')