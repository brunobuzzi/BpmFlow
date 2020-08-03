gateways
acceptGateway: aBpmGatewayDefinition

	aBpmGatewayDefinition outTransitionsDo: [:each | each acceptVisitor: self].