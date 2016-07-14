other
testOk

	analyzer blockCode: '[:proc :script| proc. script. ]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 0).