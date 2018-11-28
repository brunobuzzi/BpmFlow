monitor process artifact
selectMonitoredEventWith: processId
	"The receiver answer a collection of <monitoredEvents> with process Id equal to <processId>"

	^monitoredEvents select: [:each | each processId = processId]