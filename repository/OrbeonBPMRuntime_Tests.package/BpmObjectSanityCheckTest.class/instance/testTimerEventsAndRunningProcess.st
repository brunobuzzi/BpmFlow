test
testTimerEventsAndRunningProcess
	"Check if the event is in Event Monitor --> the process must be running (not finalized)"

	self defaultTimerEventMonitor monitoredEvents do: [:eventInstance | 
		self deny: eventInstance process hasFinalized]