other
testValidSmalltalkMessage

	analyzer blockCode: '[:proc | (proc getValueOf: ''name'') isEmpty]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 0).