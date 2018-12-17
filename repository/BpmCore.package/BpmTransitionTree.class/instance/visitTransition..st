visiting
visitTransition: aBpmTransitionTreeNode

	aBpmTransitionTreeNode outTransitions do: [:outTransition | | node |
		node := self add: outTransition asChildOf: aBpmTransitionTreeNode.
		node ifNotNil: [self visitTransition: node].
	]