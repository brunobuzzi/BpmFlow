other
testCheckUseOfInvalidSelectors

	analyzer 
		enableValidClasses;
		addDefaultValidClasses;
		enableValidSelectors;
		addDefaultValidSelectors.

	analyzer blockCode: '[:proc :script| Object someMessage]'.
	analyzer analyze.
	self assert: analyzer codeWarnings size equals: 2.

	analyzer blockCode: '[:proc :script| ZnClient new]'.
	analyzer analyze.
	self assert: analyzer codeWarnings size equals: 1.

	analyzer blockCode: '[:proc :script| ZnClient newInstance]'.
	analyzer analyze.
	self assert: analyzer codeWarnings size equals: 1.