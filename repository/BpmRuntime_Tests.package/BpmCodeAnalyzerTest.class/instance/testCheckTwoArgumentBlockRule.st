other
testCheckTwoArgumentBlockRule

	analyzer blockCode: '[:proc | proc country. proc perform: #country]'.
	analyzer checkTwoArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 1.

	analyzer blockCode: '[Date today]'.
	analyzer checkTwoArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 1.

	analyzer blockCode: '[:proc1 :proc2 | Date today]'.
	analyzer checkTwoArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 0.

	analyzer blockCode: '[:a :b | a <= b]'.
	analyzer checkTwoArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 0.

	analyzer blockCode: '[:proc1 :proc2 :proc3| Date today]'.
	analyzer checkTwoArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 1.