tests
testInitializeCurrentSystem

	BpmSystemInitialization initializeCurrentSystem.

	self assert: self defaultEnvironmentClass cache size equals: 1.
	self assert: self defaultApplicationManagerClass cache size equals: 1.
	self assert: self defaultApplicationUserClass cache size equals: 1.
	self assert: self defaultBpmUserClass cache size equals: 1.

	self assert: BpmProcessDefinitionCategory cache isEmpty.
	self assert: BpmProcessInstanceCategory cache isEmpty.
	self assert: BpmProcessDynamicCategory cache isEmpty.

	self assert: self defaultTimerEventMonitor monitoredEvents isEmpty.
	self assert: self defaultTimerEventMonitor monitoredProcessDefinitions isEmpty.
	self assert: self defaultTimerEventMonitor processesCreationEventHistory isEmpty.