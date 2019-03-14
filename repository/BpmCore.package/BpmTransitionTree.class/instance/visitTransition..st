visiting
visitTransition: aBpmTransitionTreeNode
	"The receiver visit out transitions of <aBpmTransitionTreeNode> and add it as children of it"

	(visitedTransitions identityIncludes: aBpmTransitionTreeNode transition) ifTrue: [^self].

	visitedTransitions add: aBpmTransitionTreeNode transition.

	aBpmTransitionTreeNode outTransitions do: [:outTransition | | node |
		node := self add: outTransition asChildOf: aBpmTransitionTreeNode.
		node ifNotNil: [self visitTransition: node].
	]