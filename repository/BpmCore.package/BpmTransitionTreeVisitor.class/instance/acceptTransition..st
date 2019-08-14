transition
acceptTransition: aBpmTransitionDefinition

	aBpmTransitionDefinition endArtifact outTransitions do: [:transition | | newNode |
		newNode := BpmTransitionTreeNode newOn: transtionTree for: transition.
		transtionTree add: newNode asChildOf: nil.
	].