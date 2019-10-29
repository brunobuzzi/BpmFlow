tests
testStartDeferredScriptsShExist

	self assert: (GsFile existsOnServer: self gsBpmFlowPath, '/scripts/start-deferred-scripts-loop.sh')