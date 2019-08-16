other
addChild: aBpmTransitionTreeNode

	aBpmTransitionTreeNode parent: self.

	(aBpmTransitionTreeNode children anySatisfy: [:e | e transition == transition]) ifTrue: [TransitionCycleException signal].
	
	^children add: aBpmTransitionTreeNode