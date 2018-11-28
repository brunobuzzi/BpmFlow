other
testValidBpmProcessMessageMessage

	analyzer blockCode: '[:proc | proc creator notEmpty]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 1).