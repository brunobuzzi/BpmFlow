other
testGatewaysNames
	| gatewaysNames |

	gatewaysNames := #('important' 'define').

	self assert: (self getProcess1Workflow getGatewayNodes allSatisfy: [:each | gatewaysNames includes: each getName]).

	self assert: (self getProcess1Workflow getGatewayNodes size = gatewaysNames size).