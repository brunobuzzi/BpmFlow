test proc 3 activities
testGatewaysNames3
	| gatewaysNames |

	gatewaysNames := #('has-solution').

	self assert: (self getReportToArchitectWorkflow getGatewayNodes allSatisfy: [:each | gatewaysNames includes: each getName]).

	self assert: (self getReportToArchitectWorkflow getGatewayNodes size = gatewaysNames size).