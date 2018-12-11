gateways
acceptGatewayNode: aXPDLGatewayNode

	self acceptXpdlNode: aXPDLGatewayNode.

	(aXPDLGatewayNode outConditionsAreMandatory and: [aXPDLGatewayNode isGatewayForEventsNode not]) 
	ifTrue: [(aXPDLGatewayNode outTransitions reject: [:eachTr | eachTr hasCondition]) 
					do: [:eachTr | self addGatewayWithoutConditionsItem: aXPDLGatewayNode in: eachTr]
	].
	(aXPDLGatewayNode isGatewayForEventsNode inTransitions size > 1) ifTrue: [self addEventGatewayUsedForMergingItem: aXPDLGatewayNode].

	aXPDLGatewayNode isGatewayForEventsNode 
	ifTrue: [(aXPDLGatewayNode outTransitions reject: [:eachTr | eachTr endArtifact isEventNode]) do: [:eachTr | self addNoneEventNodeAfterEventGatewayItem: eachTr endArtifact]].

	aXPDLGatewayNode outTransitions do: [:each | each acceptVisitor: self].