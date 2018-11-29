test proc 1 activities
testSubProcessNames
	| subprocessesNames |

	subprocessesNames := #('fix-issue').

	self assert: (self getTestCaseWorkflow getSubProcessNodes allSatisfy: [:each | subprocessesNames includes: each getName]).

	self assert: (self getTestCaseWorkflow getSubProcessNodes size = subprocessesNames size).