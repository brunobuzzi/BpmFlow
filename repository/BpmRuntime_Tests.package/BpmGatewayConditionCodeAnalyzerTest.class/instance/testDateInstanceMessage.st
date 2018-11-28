other
testDateInstanceMessage

	analyzer blockCode: '[:proc | proc taskFiveDate < Date today]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 0).