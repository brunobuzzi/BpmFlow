events monitor
selectMonitoredEventWith: processId
	"The receiver answer a collection of <monitoredEvents> with process Id equal to <processId>"

	^eventsMonitor selectMonitoredEventWith: processId