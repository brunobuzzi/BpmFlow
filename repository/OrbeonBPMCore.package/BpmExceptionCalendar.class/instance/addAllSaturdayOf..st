days configuration
addAllSaturdayOf: year
	"The receiver add all sundays of year <year>"

	^self addAllDaysNamed: 'Saturday' ofYear: year