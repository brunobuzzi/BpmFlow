search area
searchByApplication

	searchResult := lateralCollection select: [:each | each applicationName = (searchValues at: 'application')].