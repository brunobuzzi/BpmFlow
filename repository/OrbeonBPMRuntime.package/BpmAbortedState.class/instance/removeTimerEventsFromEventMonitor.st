execution
removeTimerEventsFromEventMonitor
	"The receiver remove all events from the event monitor <BpmTimerEventMonitor>"
	| processId eventsToRemove |

	processId := process id.

	eventsToRemove := (GsQuery fromSelectBlock: {:eventInstance | eventInstance.processId = processId} on: BpmTimerEventMonitor default monitoredEvents) queryResult.
	
	eventsToRemove do: [:eventInstance | BpmTimerEventMonitor default stopMonitoringArtifact: eventInstance]