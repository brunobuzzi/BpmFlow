xpdl
changeColorOfTransitionsReaching: executedNodes in: xmlDocument for: aBpmUser
	| transitionNodes |

	transitionNodes := OrderedCollection new.
	executedNodes do: [:eachNode | | nodeId nodeName trNode |
		nodeId := eachNode attributeAt: 'Id'.
		nodeName := eachNode attributeAt: 'Name'.
		trNode := (xmlDocument allElementsNamed: 'Transition') detect: [:each | (each attributeAt: 'To') = nodeId] ifNone: [nil].
		trNode notNil
		ifTrue: [(trNode findElementNamed: 'ConnectorGraphicsInfo') 
						attributeAt: 'BorderColor' 
						put: (aBpmUser getProperty: 'transition.borderColor.done').
			transitionNodes add: trNode].

		trNode := (xmlDocument allElementsNamed: 'Transition') detect: [:each | (each attributeAt: 'From') = nodeId] ifNone: [nil].
		(trNode notNil and:[executedActivities anySatisfy: [:each | each getDefinitionName = nodeName]])
		ifTrue: [(trNode findElementNamed: 'ConnectorGraphicsInfo') 
						attributeAt: 'BorderColor' 
						put: (aBpmUser getProperty: 'transition.borderColor.done').
			transitionNodes add: trNode].
	].

	^transitionNodes