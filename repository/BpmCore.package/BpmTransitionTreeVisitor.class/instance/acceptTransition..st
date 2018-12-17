transition
acceptTransition: aBpmTransitionDefinition

	aBpmTransitionDefinition endArtifact outTransitions do: [:transition | | newNode |
		newNode := BpmTransitionTreeNode newOn: transition.
		transtionTree add: newNode asChildOf: nil.
	].