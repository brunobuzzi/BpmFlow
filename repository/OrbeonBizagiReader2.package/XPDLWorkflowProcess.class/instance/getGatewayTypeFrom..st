components creation
getGatewayTypeFrom: gatewayNode
	| gatewayType |

	gatewayType := gatewayNode attributeAt: 'GatewayType' ifAbsent: [''].

	(gatewayType notEmpty and: [gatewayType ~= 'Parallel']) ifTrue: [^gatewayType].

	((gatewayType = 'Parallel') and: [(gatewayNode attributeAt: 'ParallelEventBased' ifAbsent: ['']) = 'true']) ifTrue: [^'ParallelEvent'].

	gatewayType := gatewayNode attributeAt: 'ExclusiveType' ifAbsent: [^''].

	((gatewayType = 'Event') and: [(gatewayNode attributeAt: 'Instantiate' ifAbsent: ['']) = 'true']) ifTrue: [^'ExclusiveEvent'].

	(gatewayType = 'Event') ifTrue: [^'InclusiveEvent'].

	^''