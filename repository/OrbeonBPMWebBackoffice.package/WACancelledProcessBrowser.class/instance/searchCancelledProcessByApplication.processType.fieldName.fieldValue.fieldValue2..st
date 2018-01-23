searching
searchCancelledProcessByApplication: appName processType: procName fieldName: fieldName fieldValue: fieldValue fieldValue2: fieldValue2
	| convertedValue1 convertedValue2 |

	convertedValue1 := (selectedLateralItem getTypeOfFieldNamed: fieldName) fromString: fieldValue.
	convertedValue2 := (selectedLateralItem getTypeOfFieldNamed: fieldName) fromString: fieldValue2.

	self searchCancelledProcessByApplication: appName andProcessType: procName.

	searchResult := searchResult select: [:procInstance | 
									(convertedValue1 <= (procInstance getValueOfProcessField: fieldName)) and: [(procInstance getValueOfProcessField: fieldName) <= convertedValue2]].