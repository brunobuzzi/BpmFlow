days configuration
addAllSundayOf: year
	"The receiver add all sundays of year <year>"

	^self addAllDaysNamed: 'Sunday' ofYear: year