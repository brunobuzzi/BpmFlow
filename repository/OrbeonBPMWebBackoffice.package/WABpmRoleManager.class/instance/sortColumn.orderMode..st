other
sortColumn: sortBlock orderMode: aSymbol

"	addUserToRoleBatchList items: ( (aSymbol = #asc) 
		ifTrue: [(addUserToRoleBatchList items asSortedCollection: sortBlock) reverse] 
		ifFalse: [addUserToRoleBatchList items asSortedCollection: sortBlock])."

	rolesBatchList items: ( (aSymbol = #asc) 
		ifTrue: [(rolesBatchList items asSortedCollection: sortBlock) reverse] 
		ifFalse: [rolesBatchList items asSortedCollection: sortBlock]).