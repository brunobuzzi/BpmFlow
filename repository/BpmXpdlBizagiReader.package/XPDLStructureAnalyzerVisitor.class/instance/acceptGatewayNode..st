other
acceptGatewayNode: aXPDLGatewayNode

	aXPDLGatewayNode outTransitions do: [:each | each acceptVisitor: self ]