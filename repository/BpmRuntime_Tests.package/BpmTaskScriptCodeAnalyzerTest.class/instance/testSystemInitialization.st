other
testSystemInitialization

	analyzer 
		enableValidClasses;
		addDefaultValidClasses.

	analyzer blockCode: '[:proc :script| BpmSystemInitialization initializeCurrentSystem]'.
	analyzer analyze.

	self assert: (analyzer codeWarnings size = 1).