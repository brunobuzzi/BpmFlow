tests
testUnregisterApplicationShExist

	self assert: (GsFile existsOnServer: self gsBpmFlowPath, '/scripts/unregister-application.sh')