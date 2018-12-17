other
printAsDolphinOn: aStream node: aBpmTransitionTreeNode

	aBpmTransitionTreeNode children do: [:each | 
		aStream nextPutAll: 'tree add: ''',each printTransition, ''' asChildOf: ''', aBpmTransitionTreeNode printTransition, '''.'.
		aStream cr.
		self printAsDolphinOn: aStream node: each.
	].