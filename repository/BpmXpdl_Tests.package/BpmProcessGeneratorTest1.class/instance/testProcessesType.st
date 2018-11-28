other
testProcessesType

	self assert: (self getTestCaseProcess isTopProcess).

	self assert: (self getFixIssueProcess isSubProcess).

	self assert: (self getArchitectProcess isSubProcess).