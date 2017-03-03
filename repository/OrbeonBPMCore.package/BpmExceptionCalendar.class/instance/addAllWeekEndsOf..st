days configuration
addAllWeekEndsOf: year
	"The receiver add all saturdays and sundays of year <year>"

	self addAllSaturdayOf: year.

	self addAllSaturdayOf: year.