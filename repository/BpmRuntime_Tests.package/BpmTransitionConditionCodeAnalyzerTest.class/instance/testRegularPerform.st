other
testRegularPerform

	analyzer blockCode: '[:proc | (proc perform: ''amount-2'') = 10]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 0).