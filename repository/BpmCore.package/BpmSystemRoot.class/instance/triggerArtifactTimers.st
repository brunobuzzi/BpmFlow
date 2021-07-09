events monitor
triggerArtifactTimers
	"The receiver iterate over <monitoredEvents> collection and evaluate the timer block of each event instance using the time stamp <TimeStamp now>.
	If true then event is triggered"

	^eventsMonitor triggerArtifactTimers