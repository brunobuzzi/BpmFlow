other
testGatewaysNames1
	| gatewaysNames processDefinition |

	gatewaysNames := #('is-issue' 'accept-issue').
	processDefinition := self getTestCaseProcess.

	(gatewaysNames collect: [:each | processDefinition getGatewayNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	self assert: (gatewaysNames size = processDefinition getNumberOfGateways)