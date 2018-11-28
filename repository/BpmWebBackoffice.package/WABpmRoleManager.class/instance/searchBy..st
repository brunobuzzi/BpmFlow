other
searchBy: aSymbol

	(aSymbol = #username)
	ifTrue: [isAddingUser := true.
			^addUserToRoleBatchList 
					items: (addUserToRoleBatchList items select: [:each |  | columnValue |
								columnValue := each perform: aSymbol.
								columnValue := (columnValue isKindOf: String) ifTrue: [columnValue] ifFalse:[columnValue printString].
								(self componentValueAt: 'searchValue') match: columnValue]).
	].

	(#(#getApplicationName #name #isBackofficeRole #isAdmin) includes: aSymbol)
	ifTrue: [^rolesBatchList 
					items: (rolesBatchList items select: [:each |  | columnValue |
								columnValue := each perform: aSymbol.
								columnValue := (columnValue isKindOf: String) ifTrue: [columnValue] ifFalse:[columnValue printString].
								(self componentValueAt: 'searchValue') match: columnValue])].