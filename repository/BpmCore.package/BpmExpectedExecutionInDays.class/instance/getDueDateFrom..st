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
	indexDay := indexDay - 1.
	"the end date is not included in exception days"
	(calendar includesExceptionDay: (aTimeStamp plusDays: indexDay)) ifFalse: [^aTimeStamp plusDays: indexDay].

	"in this case the due date is an exception date (which is not possible) --> go to next available date"
	[calendar includesExceptionDay: (aTimeStamp plusDays: indexDay)] whileTrue: [
		indexDay := indexDay + 1.
	]. 

	^aTimeStamp plusDays: indexDay