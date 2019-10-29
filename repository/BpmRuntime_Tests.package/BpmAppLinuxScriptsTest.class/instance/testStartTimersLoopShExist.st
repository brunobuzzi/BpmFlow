tests
testStartTimersLoopShExist

	self assert: (GsFile existsOnServer: self gsBpmFlowPath, '/scripts/start-timers-loop.sh')