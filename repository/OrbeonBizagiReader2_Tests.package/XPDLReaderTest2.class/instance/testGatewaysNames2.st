test proc 2 activities
testGatewaysNames2
	| gatewaysNames |

	gatewaysNames := #('can fix').

	self assert: (self getFixIssueWorkflow getGatewayNodes allSatisfy: [:each | gatewaysNames includes: each getName]).

	self assert: (self getFixIssueWorkflow getGatewayNodes size = gatewaysNames size).