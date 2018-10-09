other
testGatewayName
	| workflow |

	workflow := self getWorkflow.

	self assert: (workflow getGatewayNodes size = 1).

	self assert: (workflow getGatewayNodes asArray last getName = 'event').