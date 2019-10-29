tests
testRegisterApplicationShExist

	self assert: (GsFile existsOnServer: self gsBpmFlowPath, '/scripts/register-application.sh')