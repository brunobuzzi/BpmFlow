events monitor
triggerArtifactTimersWith: aTimeStamp
	"The receiver iterate over <monitoredEvents> collection and evaluate the timer block of each event instance using the time stamp <aTimeStamp>.
	If the timer block is true and the process is running (could be paused) then event is triggered.
	<monitoredEvents> asArray to avoid the iteration over a collection that might be updated by Web Server Processes (Gems)"

	^eventsMonitor triggerArtifactTimersWith: aTimeStamp