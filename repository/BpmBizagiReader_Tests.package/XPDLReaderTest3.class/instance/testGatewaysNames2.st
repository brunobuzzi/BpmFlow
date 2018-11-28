other
testGatewaysNames2
	| gatewaysNames |

	gatewaysNames := #('do it').

	self assert: (self getProcess2Workflow getGatewayNodes allSatisfy: [:each | gatewaysNames includes: each getName]).

	self assert: (self getProcess2Workflow getGatewayNodes size = gatewaysNames size).