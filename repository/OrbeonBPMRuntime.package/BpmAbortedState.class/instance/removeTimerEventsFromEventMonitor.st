execution
removeTimerEventsFromEventMonitor
	"The receiver remove all events from the event monitor <BpmTimerEventMonitor>"
	| processId eventsToRemove |

	processId := process id.
	
	eventsToRemove := self defaultTimerEventMonitor selectMonitoredEventWith: processId. 

	eventsToRemove do: [:eventInstance | self defaultTimerEventMonitor stopMonitoringArtifact: eventInstance]