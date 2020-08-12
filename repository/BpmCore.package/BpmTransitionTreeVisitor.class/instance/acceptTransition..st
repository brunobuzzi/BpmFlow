transition
acceptTransition: aBpmTransitionDefinition

	aBpmTransitionDefinition endArtifactOutTransitionsDo: [:transition | | newNode |
		newNode := BpmTransitionTreeNode newOn: transtionTree for: transition.
		transtionTree add: newNode asChildOf: nil.
	].