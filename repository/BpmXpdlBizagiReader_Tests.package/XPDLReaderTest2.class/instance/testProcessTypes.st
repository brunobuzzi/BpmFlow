other
testProcessTypes

	self assert: (self getTestCasePool hasParentProcess not). "this is the top process"

	self assert: (self getFixIssuePool hasParentProcess). "is subprocess"

	self assert: (self getReportToArchitectPool hasParentProcess). "is subprocess"