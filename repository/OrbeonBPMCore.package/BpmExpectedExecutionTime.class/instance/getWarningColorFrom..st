warning calculations
getWarningColorFrom: startTimeValue
	"The receiver answer it's color using the time scale <startTimeValue> to <endTimeValue>
	Colors:
	[0  to: <warningThreshold>] - Green.
	[<warningThreshold> to: <value>] - Yellow.
	[<value> to: Date today] - Red."

	^self getWarningColorFrom: (self getTimeUnitFor: startTimeValue) to: self currentTime