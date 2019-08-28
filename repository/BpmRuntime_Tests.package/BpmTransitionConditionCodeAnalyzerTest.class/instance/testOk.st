other
testOk

	analyzer blockCode: '[:proc | proc taskFiveDate < (Date fromString: ''12/12/2015'') 
and: [proc taskSixTime < (Time fromString: ''14:00'')]]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 0).