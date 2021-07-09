test
testTimerEventsAndRunningProcess
	"Check if the event is in Event Monitor --> the process must be running (not finalized)"

	testRoot monitoredEventsDo: [:eventInstance | 
		self deny: eventInstance process hasFinalized]