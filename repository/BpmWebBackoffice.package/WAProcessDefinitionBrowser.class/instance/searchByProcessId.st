search area
searchByProcessId

	searchResult := lateralCollection select: [:each | each processId printString = (searchValues at: 'id')].