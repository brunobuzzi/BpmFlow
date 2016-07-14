other
testNoBlockRule

	analyzer blockCode: 'System destroy'; analyze.
	self assert: (analyzer codeWarnings size = 1).