timer
automaticCreationIsActive
	"Answer whether or not the receiver is included in the timer event monitor <BpmTimerEventMonitor> for automatic process creation"

	^self defaultTimerEventMonitor includesProcessCreationFor: self