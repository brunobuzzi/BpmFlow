transition
acceptTransition: aBpmTransitionDefinition

	aBpmTransitionDefinition endArtifact outTransitionsDo: [:transition | | newNode |
		newNode := BpmTransitionTreeNode newOn: transtionTree for: transition.
		transtionTree add: newNode asChildOf: nil.
	].