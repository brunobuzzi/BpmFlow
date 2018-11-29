test proc 1 activities
testGatewaysNames
	| gatewaysNames |

	gatewaysNames := #('is-issue' 'accept-issue').

	self assert: (self getTestCaseWorkflow getGatewayNodes allSatisfy: [:each | gatewaysNames includes: each getName]).

	self assert: (self getTestCaseWorkflow getGatewayNodes size = gatewaysNames size).