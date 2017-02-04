other
getExpectedTimeWarningColor
	"The receiver answer the warning color of the execution time"

	self hasExpectedExecutionTime ifFalse: [^nil].

	^self expectedExecutionTime getWarningColorFrom: self