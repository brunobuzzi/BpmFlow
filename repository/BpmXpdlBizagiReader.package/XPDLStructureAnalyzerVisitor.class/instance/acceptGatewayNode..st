gateways
acceptGatewayNode: aXPDLGatewayNode

	(aXPDLGatewayNode hasMixedStartConditions) ifTrue: [self addActivityWithMixedConditionsItem: aXPDLGatewayNode].

	(aXPDLGatewayNode outConditionsAreMandatory and: [aXPDLGatewayNode isGatewayForEventsNode not]) 
	ifTrue: [(aXPDLGatewayNode outTransitions reject: [:eachTr | eachTr hasCondition]) 
					do: [:eachTr | self addGatewayWithoutConditionsItem: aXPDLGatewayNode in: eachTr]
	].

	aXPDLGatewayNode outTransitions do: [:each | each acceptVisitor: self].