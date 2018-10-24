monitor process artifact
detectMonitoredEventNamed: aString withProcessId: processId
	"The receiver answer <aBpmEventInstance> of <monitoredEvents> with process Id equal to <processId> and name equal to <aString>"

	^(self selectMonitoredEventWith: processId) detect: [:each | each getDefinitionName = aString] ifNone: [nil]