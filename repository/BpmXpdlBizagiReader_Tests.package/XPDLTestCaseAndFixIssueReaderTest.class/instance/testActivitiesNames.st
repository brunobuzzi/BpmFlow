test proc 1 activities
testActivitiesNames
	| taskNames |

	taskNames := #('test-case' 'execute-test' 'test-ok' 'analyze-issue-report').

	self assert: (self getTestCaseWorkflow getTaskNodes allSatisfy: [:each | taskNames includes: each getName]).

	self assert: (self getTestCaseWorkflow getTaskNodes size = taskNames size).