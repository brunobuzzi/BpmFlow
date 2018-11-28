other
testGatewayName
	| workflow |

	workflow := self getWorkflow.

	self assert: (workflow getGatewayNodes size = 2).

	self assert: (workflow getGatewayNodes asArray first getName = 'loan event').
	self assert: (workflow getGatewayNodes asArray last getName = 'loan approved').