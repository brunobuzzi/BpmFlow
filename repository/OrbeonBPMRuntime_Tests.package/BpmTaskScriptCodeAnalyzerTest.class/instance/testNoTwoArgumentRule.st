other
testNoTwoArgumentRule

	analyzer blockCode: '[:form | ]'; analyze.
	self assert: (analyzer codeWarnings size = 1).
	analyzer initialize.

	analyzer blockCode: '[]'; analyze.
	self assert: (analyzer codeWarnings size = 1).
	analyzer initialize.

	analyzer blockCode: '[:a :b :c | ]'; analyze.
	self assert: (analyzer codeWarnings size = 1).