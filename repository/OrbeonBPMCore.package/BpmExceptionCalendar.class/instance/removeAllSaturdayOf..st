days configuration
removeAllSaturdayOf: year
	"The receiver add all sundays of year <year>"

	^self removeAllDaysNamed: 'Saturday' ofYear: year