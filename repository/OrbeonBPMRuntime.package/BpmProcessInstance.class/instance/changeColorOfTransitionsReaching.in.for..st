xpdl
changeColorOfTransitionsReaching: executedNodes in: xmlDocument for: aBpmUser
	| transitionNodes |

	transitionNodes := OrderedCollection new.
	executedNodes do: [:eachNode | | nodeId trNode |
		nodeId := eachNode attributeAt: 'Id'.
		trNode := (xmlDocument allElementsNamed: 'Transition') detect: [:each | (each attributeAt: 'To') = nodeId] ifNone: [nil].
		trNode notNil
		ifTrue: [(trNode findElementNamed: 'ConnectorGraphicsInfo') 
						attributeAt: 'BorderColor' 
						put: (aBpmUser getProperty: 'transition.borderColor.done').
			transitionNodes add: trNode].

		trNode := (xmlDocument allElementsNamed: 'Transition') detect: [:each | (each attributeAt: 'From') = nodeId] ifNone: [nil].
		trNode notNil
		ifTrue: [(trNode findElementNamed: 'ConnectorGraphicsInfo') 
						attributeAt: 'BorderColor' 
						put: (aBpmUser getProperty: 'transition.borderColor.done').
			transitionNodes add: trNode].
	].

	^transitionNodes