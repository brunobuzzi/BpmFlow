warning calculations
countExecutionTimeFrom: aTimeValue
	"The receiver calculate (count) the execution time from start time <startTimeValue> to end time <today>.
	It use it's calendar to whether or not compute a particular time"

	^self countExecutionTimeFrom: aTimeValue to: self currentTime