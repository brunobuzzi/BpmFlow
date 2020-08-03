visiting
visitTransition: aBpmTransitionTreeNode
	"The receiver visit out transitions of <aBpmTransitionTreeNode> and add it as children of it"

	((visitedTransitions select: [:eachTr | eachTr == aBpmTransitionTreeNode transition]) size > loopTolerance) ifTrue: [^self].

	visitedTransitions add: aBpmTransitionTreeNode transition.

	aBpmTransitionTreeNode outTransitionsDo: [:outTransition | | node |
		node := self add: outTransition asChildOf: aBpmTransitionTreeNode.
		node ifNotNil: [self visitTransition: node].
	]