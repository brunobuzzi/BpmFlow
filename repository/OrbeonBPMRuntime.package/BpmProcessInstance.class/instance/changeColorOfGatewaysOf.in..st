xpdl
changeColorOfGatewaysOf: transitionsNodes in: xmlDocument

	transitionsNodes do: [:eachNode | | nodeId trNode |
		nodeId := eachNode attributeAt: 'To'.
		trNode := ((xmlDocument allElementsNamed: 'Activity') select: [:each | (each findElementNamed: 'Route') notNil])
							detect: [:each | (each attributeAt: 'Id') = nodeId] ifNone: [nil].
		trNode notNil
		ifTrue: [(trNode findElementNamed: 'NodeGraphicsInfo') attributeAt: 'FillColor' put: '-7136256'.].
	]