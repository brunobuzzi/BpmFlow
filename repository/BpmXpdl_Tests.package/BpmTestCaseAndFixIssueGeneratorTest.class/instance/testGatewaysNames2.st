other
testGatewaysNames2
	| gatewaysNames processDefinition |

	gatewaysNames := #('can fix').
	processDefinition := self getFixIssueProcess.

	(gatewaysNames collect: [:each | processDefinition getGatewayNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	self assert: (gatewaysNames size = processDefinition getNumberOfGateways)