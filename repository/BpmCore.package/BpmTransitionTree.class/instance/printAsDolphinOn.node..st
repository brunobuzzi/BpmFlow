other
printAsDolphinOn: aStream node: aBpmTransitionTreeNode
	"The receiver add to <aStream> Dolphin Smalltalk code for the tree node <aBpmTransitionTreeNode>.
	This is only for development and testing purpose"

	aBpmTransitionTreeNode children do: [:each | 
		aStream nextPutAll: 'tree add: ''',each printTransition, ''' asChildOf: ''', aBpmTransitionTreeNode printTransition, '''.'.
		aStream cr.
		self printAsDolphinOn: aStream node: each.
	].