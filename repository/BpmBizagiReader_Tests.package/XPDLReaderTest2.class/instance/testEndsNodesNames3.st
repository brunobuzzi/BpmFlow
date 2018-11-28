other
testEndsNodesNames3
	| endNames |

	endNames := #('end').

	self assert: (self getReportToArchitectWorkflow endNodes allSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getReportToArchitectWorkflow endNodes size = endNames size).