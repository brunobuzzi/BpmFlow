test proc 3 activities
testActivitiesNames3
	| taskNames |

	taskNames := #('analyze-developer-report' 'report-workaround' 'report-solution').

	self assert: (self getReportToArchitectWorkflow getTaskNodes allSatisfy: [:each | taskNames includes: each getName]).

	self assert: (self getReportToArchitectWorkflow getTaskNodes size = taskNames size).