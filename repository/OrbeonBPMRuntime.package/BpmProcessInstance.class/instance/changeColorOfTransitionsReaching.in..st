xpdl
changeColorOfTransitionsReaching: nodesCollection in: xmlDocument
	| transitionNodes |

	transitionNodes := OrderedCollection new.
	nodesCollection do: [:eachNode | | nodeId trNode |
		nodeId := eachNode attributeAt: 'Id'.
		trNode := (xmlDocument allElementsNamed: 'Transition') detect: [:each | (each attributeAt: 'To') = nodeId] ifNone: [nil].
		trNode notNil
		ifTrue: [(trNode findElementNamed: 'ConnectorGraphicsInfo') attributeAt: 'BorderColor' put: '-7136256'.
			transitionNodes add: trNode].

		trNode := (xmlDocument allElementsNamed: 'Transition') detect: [:each | (each attributeAt: 'From') = nodeId] ifNone: [nil].
		trNode notNil
		ifTrue: [(trNode findElementNamed: 'ConnectorGraphicsInfo') attributeAt: 'BorderColor' put: '-7136256'.
			transitionNodes add: trNode].
	].

	^transitionNodes