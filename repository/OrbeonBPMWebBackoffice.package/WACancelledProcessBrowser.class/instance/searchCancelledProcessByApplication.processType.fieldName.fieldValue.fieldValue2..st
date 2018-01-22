searching
searchCancelledProcessByApplication: appName processType: procName fieldName: fieldName fieldValue: fieldValue fieldValue2: fieldValue2

	self searchCancelledProcessByApplication: appName andProcessType: procName.

	searchResult := searchResult select: [:each | each].