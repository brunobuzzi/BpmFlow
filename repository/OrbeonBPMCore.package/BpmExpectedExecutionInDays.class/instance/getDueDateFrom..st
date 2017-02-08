warning calculations
getDueDateFrom: aTimeStamp
	"The receiver answer aTimeStamp that is the due date starting the count from <aTimeStamp> "
	| indexDay valDays |

	indexDay := 0.
	valDays := 0.

	[valDays < value] whileTrue: [
		(calendar includesExceptionDay: (aTimeStamp plusDays: indexDay) date)
		ifFalse: [valDays := valDays + 1].
		indexDay := indexDay + 1.
	]. 

	^aTimeStamp plusDays: indexDay