search area
searchByFormType

	searchResult := lateralCollection select: [:each | each getOrderedTasksNames includes: (searchValues at: 'form-type')].