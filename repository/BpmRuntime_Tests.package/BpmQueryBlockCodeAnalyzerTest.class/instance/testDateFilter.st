other
testDateFilter

	analyzer blockCode: '[:e | e creationDate = (Date fromString: ''01/01/2019'')]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 0).