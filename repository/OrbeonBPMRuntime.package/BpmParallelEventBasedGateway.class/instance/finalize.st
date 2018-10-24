other
finalize
	"The receiver is finalized and all timer events are removed from <BpmTimerEventMonitor>"

	super finalize.

	(events select: [:each | each isTimerEvent]) do: [:eventInstance | self defaultTimerEventMonitor stopMonitoringArtifact: eventInstance]