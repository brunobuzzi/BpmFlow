tests
testStartOnShExist

	self assert: (GsFile existsOnServer: self gsBpmFlowPath, '/scripts/start-on.sh')