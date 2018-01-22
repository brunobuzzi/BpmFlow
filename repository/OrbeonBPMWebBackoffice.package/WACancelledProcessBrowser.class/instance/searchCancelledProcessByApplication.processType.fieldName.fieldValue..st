searching
searchCancelledProcessByApplication: appName processType: procName fieldName: fieldName fieldValue: fieldValue

	self searchCancelledProcessByApplication: appName andProcessType: procName.

	searchResult := searchResult select: [:procInstance | (procInstance getValueOfProcessField: fieldName) = fieldValue].