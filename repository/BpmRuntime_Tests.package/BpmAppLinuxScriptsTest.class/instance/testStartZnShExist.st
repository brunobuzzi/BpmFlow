tests
testStartZnShExist

	self assert: (GsFile existsOnServer: self gsBpmFlowPath, '/scripts/start-zn.sh')