other
testZeroArgument

	analyzer blockCode: '[ ]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 1).