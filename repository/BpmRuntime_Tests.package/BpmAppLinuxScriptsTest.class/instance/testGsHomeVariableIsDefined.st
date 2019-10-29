tests
testGsHomeVariableIsDefined

	self assert: (System performOnServer: 'echo $GS_HOME') allButLast notEmpty