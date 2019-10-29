tests
testStartAllShExist

	self assert: (GsFile existsOnServer: self gsBpmFlowPath, '/scripts/start-all.sh')