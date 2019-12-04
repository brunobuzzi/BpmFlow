other
testClassMessageAndForbiddenMesage

	analyzer blockCode: '[:proc | MyClass resetAll. proc class removeAll]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 2).