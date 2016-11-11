query variables
getStartDate

	^self getDateFromSearchValueNamed: 'start' onError: (Date fromString: '01/01/2016')