other
testTimeInstanceMessage

	analyzer blockCode: '[:proc | proc taskFiveDate < Time now]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 0).