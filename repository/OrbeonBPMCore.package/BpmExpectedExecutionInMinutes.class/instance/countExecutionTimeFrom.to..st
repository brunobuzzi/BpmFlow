other
countExecutionTimeFrom: startTimeStamp to: endTimeStamp
	"The receiver calculate (count) the execution time from start time <startTimeStamp> to end time <endTimeStamp>.
	It use it's calendar to whether or not compute a minute"
	| currentTimeStamp minutesCount |
	
	currentTimeStamp := startTimeStamp.
	minutesCount := 0.

	[currentTimeStamp < endTimeStamp] whileTrue: [
		(calendar timeIntervalExistFrom: currentTimeStamp to: (currentTimeStamp plusSeconds: 60 "1hour")) 
			ifFalse: [minutesCount := minutesCount + 1]. 

		currentTimeStamp := currentTimeStamp plusSeconds: 60.
	].

	(currentTimeStamp = endTimeStamp and: [(calendar timeIntervalExistFrom: (currentTimeStamp plusSeconds: 60) to: (currentTimeStamp plusSeconds: 60))])
	ifTrue: [minutesCount := minutesCount + 1]. "border case. because above condition loop {currentTimeStamp < endTimeStamp} "

	^minutesCount