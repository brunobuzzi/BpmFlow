search area
searchByProcessType

	searchResult := lateralCollection select: [:each | each processName = (searchValues at: 'process-type')].