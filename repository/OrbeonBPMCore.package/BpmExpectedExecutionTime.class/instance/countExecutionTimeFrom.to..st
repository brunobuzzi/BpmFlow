warning calculations
countExecutionTimeFrom: startTimeValue to: endTimeValue
	"The receiver calculate (count) the execution time from start time <startTimeValue> to end time <endTimeValue>.
	It use it's calendar to whether or not compute a particular time"

	self subclassResponsibility