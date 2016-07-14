other
testMoreThanOneArgument

	analyzer blockCode: '[:form :proc | ]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 1).