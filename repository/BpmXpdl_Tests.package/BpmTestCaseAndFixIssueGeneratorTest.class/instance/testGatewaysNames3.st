other
testGatewaysNames3
	| gatewaysNames processDefinition |

	gatewaysNames := #('has-solution').
	processDefinition := self getArchitectProcess.

	(gatewaysNames collect: [:each | processDefinition getGatewayNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	self assert: (gatewaysNames size = processDefinition getNumberOfGateways)