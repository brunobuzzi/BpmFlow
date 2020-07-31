other
testParticipants

	self assert: 
		(self getTestCaseProcess participantsAllSatisfy: [:each | 
			self getFixIssueProcess participantsIncludesIdentical: each]).

	self assert:
		(self getTestCaseProcess participantsSize = self getFixIssueProcess participantsSize).

	self assert: 
		(self getTestCaseProcess participantsAllSatisfy: [:each | 
			self getArchitectProcess participantsIncludesIdentical: each]).

	self assert:
		(self getTestCaseProcess participantsSize = self getArchitectProcess participantsSize).