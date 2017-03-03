days configuration
removeAllSaturdayOf: year
	"The receiver remove all saturdays of year <year>"

	^self removeAllDaysNamed: 'Saturday' ofYear: year