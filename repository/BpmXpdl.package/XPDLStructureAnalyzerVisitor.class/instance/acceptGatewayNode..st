xpdl gateways
acceptGatewayNode: aXPDLGatewayNode
	"The receiver check for:
	* Mandatory conditions for normal Gateways
	* Event Gateways used for merging
	* All nodes to be event nodes after an Event Gateway"

	self acceptXpdlNode: aXPDLGatewayNode.

	(aXPDLGatewayNode outConditionsAreMandatory and: [aXPDLGatewayNode isGatewayForEventsNode not]) 
	ifTrue: [(aXPDLGatewayNode outTransitionsReject: [:eachTr | eachTr hasCondition]) 
					do: [:eachTr | self addGatewayWithoutConditionsItem: aXPDLGatewayNode in: eachTr]
	].
	(aXPDLGatewayNode isGatewayForEventsNode and: [aXPDLGatewayNode inTransitionsSize > 1]) ifTrue: [self addEventGatewayUsedForMergingItem: aXPDLGatewayNode].

	aXPDLGatewayNode isGatewayForEventsNode 
	ifTrue: [(aXPDLGatewayNode outTransitionsReject: [:eachTr | eachTr endNodeIsEventNode]) 
					do: [:eachTr | eachTr endNodeDo: [:endNode | self addNoneEventNodeAfterEventGatewayItem: endNode]]].

	aXPDLGatewayNode outTransitionsDo: [:each | each acceptVisitor: self].