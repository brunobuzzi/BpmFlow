other
searchBy: aSymbol

	tasksBatchedList 
		items: (tasksBatchedList items select: [:each |  | columnValue |
					columnValue := each perform: aSymbol.
					(self componentValueAt: 'searchValue') match: columnValue]).