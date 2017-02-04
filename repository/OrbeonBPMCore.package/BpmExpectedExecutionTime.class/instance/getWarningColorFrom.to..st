warning calculations
getWarningColorFrom: startTimeValue to: endTimeValue
	"The receiver answer it's color using the time scale <startTimeValue> to <endTimeValue>
	Colors:
	[0  to: <warningThreshold>] - Green.
	[<warningThreshold> to: <value>] - Yellow.
	[<value> to: Date today] - Red."
	| consumedTime |

	consumedTime := self countExecutionTimeFrom: startTimeValue to: endTimeValue.

	(consumedTime >= value) ifTrue: [^Color red].

	(consumedTime >= value * warningThreshold) ifTrue: [^Color yellow].

	^Color green