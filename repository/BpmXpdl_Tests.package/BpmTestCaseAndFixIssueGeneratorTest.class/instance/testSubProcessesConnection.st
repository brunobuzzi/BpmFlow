other
testSubProcessesConnection

	self assert: (((self getTestCaseProcess getSubProcessTaskNamed: 'fix-issue' ifNone: [self assert: false]) subProcessDefinition 
							== self getFixIssueProcess)).

	self assert: (((self getFixIssueProcess getSubProcessTaskNamed: 'report-to-architect' ifNone: [self assert: false]) subProcessDefinition == self getArchitectProcess)).