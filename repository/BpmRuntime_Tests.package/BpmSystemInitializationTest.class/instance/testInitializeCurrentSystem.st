tests
testInitializeCurrentSystem

	BpmSystemInitialization initializeCurrentSystem.

	self assert: self defaultEnvironmentClass cache isEmpty.
	self assert: self defaultApplicationManagerClass cache isEmpty.
	self assert: self defaultApplicationUserClass cache isEmpty.
	self assert: self defaultBpmUserClass cache isEmpty.

	self assert: BpmProcessDefinitionCategory cache isEmpty.
	self assert: BpmProcessInstanceCategory cache isEmpty.
	self assert: BpmProcessDynamicCategory cache isEmpty.

	self assert: self defaultTimerEventMonitor monitoredEvents isEmpty.
	self assert: self defaultTimerEventMonitor monitoredProcessDefinitions isEmpty.
	self assert: self defaultTimerEventMonitor processesCreationEventHistory isEmpty.