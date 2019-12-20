other
testCheckThreeArgumentBlockRule

	analyzer blockCode: '[:proc | proc country. proc perform: #country]'.
	analyzer checkThreeArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 1.

	analyzer blockCode: '[Date today]'.
	analyzer checkThreeArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 1.

	analyzer blockCode: '[:proc1 :proc2 | Date today]'.
	analyzer checkThreeArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 1.

	analyzer blockCode: '[:a :b | a <= b]'.
	analyzer checkThreeArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 1.

	analyzer blockCode: '[:proc1 :proc2 :proc3| Date today]'.
	analyzer checkThreeArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 0.

	analyzer blockCode: '[:a :b :b| a + b + c]'.
	analyzer checkThreeArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 0.