other
testTimeStampInstanceMessage

	analyzer blockCode: '[:proc | proc taskFiveDate < TimeStamp now]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 0).