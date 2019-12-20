other
testCheckOneArgumentBlockRule

	analyzer blockCode: '[:proc | proc country. proc perform: #country]'.
	analyzer checkOneArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 0.

	analyzer blockCode: '[:proc | ]'.
	analyzer checkOneArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 0.

	analyzer blockCode: '[Date today]'.
	analyzer checkOneArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 1.

	analyzer blockCode: '[:proc1 :proc2 | Date today]'.
	analyzer checkOneArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 1.

	analyzer blockCode: '[:proc1 :proc2 :proc3| Date today]'.
	analyzer checkOneArgumentBlockRule.
	self assert: analyzer codeWarnings size equals: 1.