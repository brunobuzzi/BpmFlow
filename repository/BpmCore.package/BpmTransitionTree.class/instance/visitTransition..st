visiting
visitTransition: aBpmTransitionTreeNode
	"The receiver visit out transitions of <aBpmTransitionTreeNode> and add it as children of it"

	aBpmTransitionTreeNode outTransitions do: [:outTransition | | node |
		node := self add: outTransition asChildOf: aBpmTransitionTreeNode.
		node ifNotNil: [self visitTransition: node].
	]