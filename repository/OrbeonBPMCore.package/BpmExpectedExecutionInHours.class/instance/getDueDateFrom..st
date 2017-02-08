warning calculations
getDueDateFrom: aTimeStamp
	"The receiver answer aTimeStamp that is the due date starting the count from <aTimeStamp> "
	| indexHour valHours |

	indexHour := 0.
	valHours := 0.

	[valHours < value] whileTrue: [
		(calendar timeIntervalExistFrom: (aTimeStamp plusSeconds: (60*60*indexHour)) to: (aTimeStamp plusSeconds: (60*60*(indexHour + 1))))
		ifFalse: [valHours := valHours + 1].
		indexHour := indexHour + 1.
	]. 

	^aTimeStamp plusSeconds: (60*60*indexHour)