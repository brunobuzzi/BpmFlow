other
countExecutionTimeFrom: startTimeStamp to: endTimeStamp
	"The receiver calculate (count) the execution time from start time <startTimeStamp> to end time <endTimeStamp>.
	It use it's calendar to whether or not compute a hour"
	| currentTimeStamp hoursCount |
	
	currentTimeStamp := startTimeStamp.
	hoursCount := 0.

	[currentTimeStamp < endTimeStamp] whileTrue: [
		(calendar timeIntervalExistFrom: currentTimeStamp to: (currentTimeStamp plusSeconds: 3600 "1hour")) 
			ifFalse: [hoursCount := hoursCount + 1]. 

		currentTimeStamp := currentTimeStamp plusSeconds: 3600.
	].

	(currentTimeStamp = endTimeStamp and: [(calendar timeIntervalExistFrom: (currentTimeStamp plusSeconds: 60) to: (currentTimeStamp plusSeconds: 60))])
	ifTrue: [hoursCount := hoursCount + 1]. "border case. because above condition loop {currentTimeStamp < endTimeStamp} "

	^hoursCount