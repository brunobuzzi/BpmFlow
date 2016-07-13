tables
sortColumn: sortBlock orderMode: aSymbol

	usersBatchedList items: ( (aSymbol = #asc) 
		ifTrue: [(usersBatchedList items asSortedCollection: sortBlock) reverse] 
		ifFalse: [usersBatchedList items asSortedCollection: sortBlock]).