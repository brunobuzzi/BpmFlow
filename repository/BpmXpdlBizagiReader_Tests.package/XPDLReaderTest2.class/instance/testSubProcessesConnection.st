test subprocess
testSubProcessesConnection

	self assert: (
		(self getTestCasePool) getSubProcessNodes asArray last subProcess == self getFixIssuePool).

	self assert: (
		(self getFixIssuePool) getSubProcessNodes asArray last subProcess == self getReportToArchitectPool).