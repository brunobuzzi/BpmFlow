visiting
pathAlreadyExistFor: aBpmTransitionTreeNode

	^allNodes anySatisfy: [:each | each sameAs: aBpmTransitionTreeNode]