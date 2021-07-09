events monitor
detectMonitoredEventNamed: aString withProcessId: processId
	"The receiver answer <aBpmEventInstance> of <monitoredEvents> with process Id equal to <processId> and name equal to <aString>"

	^eventsMonitor detectMonitoredEventNamed: aString withProcessId: processId