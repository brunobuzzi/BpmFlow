xpdl gateways
acceptGatewayNode: aXPDLGatewayNode
	"The receiver check for:
	* Mandatory conditions for normal Gateways
	* Event Gateways used for merging
	* All nodes to be event nodes after an Event Gateway"

	self acceptXpdlNode: aXPDLGatewayNode.

	(aXPDLGatewayNode outConditionsAreMandatory and: [aXPDLGatewayNode isGatewayForEventsNode not]) 
	ifTrue: [(aXPDLGatewayNode outTransitions reject: [:eachTr | eachTr hasCondition]) 
					do: [:eachTr | self addGatewayWithoutConditionsItem: aXPDLGatewayNode in: eachTr]
	].
	(aXPDLGatewayNode isGatewayForEventsNode and: [aXPDLGatewayNode inTransitions size > 1]) ifTrue: [self addEventGatewayUsedForMergingItem: aXPDLGatewayNode].

	aXPDLGatewayNode isGatewayForEventsNode 
	ifTrue: [(aXPDLGatewayNode outTransitions reject: [:eachTr | eachTr endNode isEventNode]) do: [:eachTr | self addNoneEventNodeAfterEventGatewayItem: eachTr endArtifact]].

	aXPDLGatewayNode outTransitions do: [:each | each acceptVisitor: self].