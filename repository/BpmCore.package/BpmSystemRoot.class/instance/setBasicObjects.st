private
setBasicObjects

	environments := Dictionary new.
	serverConfiguration := GemStoneServerConfiguration new.
	eventsMonitor := BpmTimerEventMonitor newOnRoot:  self.

	self createDefaultObjects