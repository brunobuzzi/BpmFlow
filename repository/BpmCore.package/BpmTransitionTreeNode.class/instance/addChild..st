other
addChild: aBpmTransitionTreeNode

	aBpmTransitionTreeNode parent: self.

	(aBpmTransitionTreeNode children anySatisfy: [:e | e transition == transition]) ifTrue: [self halt].
	

	^children add: aBpmTransitionTreeNode