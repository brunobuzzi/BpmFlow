gateways
acceptGateway: aBpmGatewayDefinition

	aBpmGatewayDefinition outTransitions do: [:each | each acceptVisitor: self].