other
calculateExecutionTimeFrom: startDate to: endDate
	"The receiver calculate (count) the execution time from start time <startTimeValue> to end time <endTimeValue>.
	It use it's calendar to whether or not compute a particular day"
	| currentDate daysCount |
	
	currentDate := startDate.
	daysCount := 0.

	[currentDate <= endDate] whileTrue: [
		(calendar isExceptionDay: currentDate) ifFalse: [daysCount := daysCount + 1].
		currentDate := currentDate addDays: 1.
	].

	^daysCount