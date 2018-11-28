other
testNameMessage

	analyzer blockCode: '[:proc | proc name isEmpty]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 1).