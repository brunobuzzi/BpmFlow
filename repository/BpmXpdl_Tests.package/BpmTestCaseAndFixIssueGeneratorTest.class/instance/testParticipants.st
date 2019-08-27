other
testParticipants

	self assert: 
		(self getTestCaseProcess participants allSatisfy: [:each | 
			self getFixIssueProcess participants includesIdentical: each]).

	self assert:
		(self getTestCaseProcess participants size = self getFixIssueProcess participants size).

	self assert: 
		(self getTestCaseProcess participants allSatisfy: [:each | 
			self getArchitectProcess participants includesIdentical: each]).

	self assert:
		(self getTestCaseProcess participants size = self getArchitectProcess participants size).