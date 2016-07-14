other
testValidMessageToArgument

	analyzer blockCode: '[:proc | proc currentActivities removeAll]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 1).