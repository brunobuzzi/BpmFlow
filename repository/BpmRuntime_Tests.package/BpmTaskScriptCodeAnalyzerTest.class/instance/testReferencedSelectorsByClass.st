other
testReferencedSelectorsByClass

	analyzer 
		enableValidClasses;
		addDefaultValidClasses;
		enableValidSelectors;
		addDefaultValidSelectors.

	analyzer blockCode: '[:proc :script| Object someMessage]'.
	analyzer analyze.
	self assert: analyzer codeWarnings size equals: 2.

	analyzer blockCode: '[:proc :script| GsFile someMessage. proc foo. script foo]'.
	analyzer analyze.
	self assert: analyzer codeWarnings size equals: 1.

	analyzer blockCode: '[:proc :script| ZnClient someMessage. GsSocket foo. GsSignalingSocket foo. GsSecureSocket. proc foo. script foo]'.
	analyzer analyze.
	self assert: analyzer codeWarnings size equals: 3.

	analyzer blockCode: '[:proc :script| BpmSystemInitialization someMessage. BpmProcessDefinition foo. GsSocket foo. GsSignalingSocket foo. GsSecureSocket. proc foo. script foo]'.
	analyzer analyze.
	self assert: analyzer codeWarnings size equals: 6.