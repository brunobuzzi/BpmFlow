test proc 2 activities
testActivitiesNames2
	| taskNames |

	taskNames := #('analyze-issue' 'report-fixes' 'internal-test').

	self assert: (self getFixIssueWorkflow getTaskNodes allSatisfy: [:each | taskNames includes: each getName]).

	self assert: (self getFixIssueWorkflow getTaskNodes size = taskNames size).