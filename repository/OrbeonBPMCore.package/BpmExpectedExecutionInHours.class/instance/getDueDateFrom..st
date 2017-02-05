warning calculations
getDueDateFrom: aTimeStamp
	"The receiver answer aTimeStamp that is the due date starting the count from <aTimeStamp> "

	^aTimeStamp plusSeconds: (60*60*value)