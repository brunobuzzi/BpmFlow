tables
searchBy: aSymbol

	usersBatchedList 
		items: (usersBatchedList items select: [:each |  | columnValue |
					columnValue := each perform: aSymbol.
					columnValue := (columnValue isKindOf: String) ifTrue: [columnValue] ifFalse:[columnValue printString].
					(self componentValueAt: 'searchValue') match: columnValue])