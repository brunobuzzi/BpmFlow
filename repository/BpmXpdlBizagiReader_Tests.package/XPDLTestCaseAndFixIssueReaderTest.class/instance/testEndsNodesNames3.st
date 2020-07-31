other
testEndsNodesNames3
	| endNames |

	endNames := #('end').

	self assert: (self getReportToArchitectWorkflow endNodesAllSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getReportToArchitectWorkflow endNodesSize = endNames size).