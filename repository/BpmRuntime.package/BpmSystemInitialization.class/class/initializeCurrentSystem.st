system initilization
initializeCurrentSystem
	"WARNING: THIS METHOD WILL DELETE ALL ROOT OBJECTS FROM THE SYSTEM"

	self defaultEnvironmentClass initializeCache.
	self defaultApplicationManagerClass initializeCache.
	self defaultBpmUserClass initializeCache.
	self defaultApplicationUserClass initializeCache.

	self defaultProcessDefinitionClass initializeAnonymousFormMapping.
	BpmProcessDefinitionCategory initializeCache.
	BpmProcessInstanceCategory initializeCache.
	BpmProcessDynamicCategory initializeCache.

	self defaultTimerEventMonitor class initializeDefault.