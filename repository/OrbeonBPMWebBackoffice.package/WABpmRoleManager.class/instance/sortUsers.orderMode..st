other
sortUsers: sortBlock orderMode: aSymbol

	addUserToRoleBatchList orderMode: aSymbol.
	addUserToRoleBatchList items: ( (aSymbol = #asc) 
		ifTrue: [(addUserToRoleBatchList items asSortedCollection: sortBlock) reverse] 
		ifFalse: [addUserToRoleBatchList items asSortedCollection: sortBlock]).