adding exception
addExceptionTimeFrom: startTime to: endTime
	"The receiver add a time interval <startTime> to <endTime> to the exception hours collection.
	This time interval is NOT going to be counted in processes execution time."

	"(self hasExceptionDays and: [self timeIntervalExistFrom: startTime to: endTime]) ifTrue: [^Array with: startTime with: endTime]."
	(self timeIntervalExistFrom: startTime to: endTime) ifTrue: [^Array with: startTime with: endTime].

	^hours add: (Array with: startTime with: endTime)