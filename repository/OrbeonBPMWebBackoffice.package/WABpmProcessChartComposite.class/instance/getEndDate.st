query variables
getEndDate

	^self getDateFromSearchValueNamed: 'end' onError: (Date fromString: '12/31/2016')