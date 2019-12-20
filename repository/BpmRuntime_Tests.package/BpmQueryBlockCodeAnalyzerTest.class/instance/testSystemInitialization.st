other
testSystemInitialization

	analyzer blockCode: '[:proc :script| BpmSystemInitialization initializeCurrentSystem]'.

	analyzer analyze.

	self assert: analyzer codeWarnings size equals: 2.