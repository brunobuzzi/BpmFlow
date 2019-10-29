tests
testStopAllShExist

	self assert: (GsFile existsOnServer: self gsBpmFlowPath, '/scripts/stop-all.sh')