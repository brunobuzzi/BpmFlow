days configuration
removeAllSundayOf: year
	"The receiver remove all sundays of year <year>"

	^self removeAllDaysNamed: 'Sunday' ofYear: year