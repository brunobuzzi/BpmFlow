other
testStopOnShExist

	self assert: (GsFile existsOnServer: self gsBpmFlowPath, '/scripts/stop-on.sh')