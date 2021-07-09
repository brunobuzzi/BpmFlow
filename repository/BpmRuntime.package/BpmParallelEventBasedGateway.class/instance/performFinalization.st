other
performFinalization
	"The receiver is finalized and all timer events are removed from <BpmTimerEventMonitor>"

	super performFinalization.

	(events select: [:each | each isTimerEvent and:[each isDone not]]) do: [:eventInstance | self systemRoot stopMonitoringArtifact: eventInstance]