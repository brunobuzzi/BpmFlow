execution
removeTimerEventsFromEventMonitor
	"The receiver remove all events from the event monitor <BpmTimerEventMonitor>"
	| processId eventsToRemove |

	processId := process id.

	eventsToRemove := (GsQuery fromSelectBlock: {:eventInstance | eventInstance.processId = processId} on: self defaultTimerEventMonitor monitoredEvents) queryResult.
	
	eventsToRemove do: [:eventInstance | self defaultTimerEventMonitor stopMonitoringArtifact: eventInstance]