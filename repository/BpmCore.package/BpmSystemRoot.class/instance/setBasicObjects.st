private
setBasicObjects

	environments := Dictionary new.
	eventsMonitor := BpmTimerEventMonitor newOnRoot:  self.
	tokensRegistry := BpmOrbeonTempTokenRegistry newOn: self.
	serverConfiguration := GemStoneServerConfiguration new.
	serverConfiguration 
		gemstoneIP: 'http://192.168.132.136:8787';
		baseUrlDocumentation: 'https://bpmflow.gitbook.io/project'.

	self createDefaultObjects