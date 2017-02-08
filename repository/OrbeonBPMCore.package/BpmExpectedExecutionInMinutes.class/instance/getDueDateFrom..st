warning calculations
getDueDateFrom: aTimeStamp
	"The receiver answer aTimeStamp that is the due date starting the count from <aTimeStamp> "
	| indexMinute valMinutes |

	indexMinute := 0.
	valMinutes := 0.

	[valMinutes < value] whileTrue: [
		(calendar timeIntervalExistFrom: (aTimeStamp plusSeconds: (60*indexMinute)) to: (aTimeStamp plusSeconds: (60*(indexMinute + 1))))
		ifFalse: [valMinutes := valMinutes + 1].
		indexMinute := indexMinute + 1.
	]. 

	^aTimeStamp plusSeconds: (60*indexMinute)