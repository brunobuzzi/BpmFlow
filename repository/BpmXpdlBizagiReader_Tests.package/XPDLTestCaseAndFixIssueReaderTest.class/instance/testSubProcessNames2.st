test proc 2 activities
testSubProcessNames2
	| subprocessesNames |

	subprocessesNames := #('report-to-architect').

	self assert: (self getFixIssueWorkflow getSubProcessNodes allSatisfy: [:each | subprocessesNames includes: each getName]).

	self assert: (self getFixIssueWorkflow getSubProcessNodes size = subprocessesNames size).