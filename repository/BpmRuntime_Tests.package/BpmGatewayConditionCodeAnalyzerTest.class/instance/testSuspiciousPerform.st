other
testSuspiciousPerform

	analyzer blockCode: '[:proc | (proc perform: ''selectAmount:'' with: 20) = 10]'.

	analyzer analyze.

	self assert: (analyzer codeWarnings size = 1).