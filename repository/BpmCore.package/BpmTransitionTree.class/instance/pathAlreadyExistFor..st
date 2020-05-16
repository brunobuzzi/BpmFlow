visiting
pathAlreadyExistFor: aBpmTransitionTreeNode
	"Answer whether or not any of the current visited nodes is the same as node <aBpmTransitionTreeNode>.
	To be the same two nodes has to have the same collection of parent transitions"

	^allNodes anySatisfy: [:each | each sameAs: aBpmTransitionTreeNode]