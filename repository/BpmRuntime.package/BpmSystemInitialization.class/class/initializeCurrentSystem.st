system initilization
initializeCurrentSystem
	"WARNING: THIS METHOD WILL DELETE ALL ROOT OBJECTS FROM THE SYSTEM"

	self defaultEnvironmentClass initializeCache.
	self getApplicationManagerClass initializeCache.
	self defaultBpmUserClass initializeCache.
	self defaultApplicationUserClass initializeCache.

	BpmAvailableTasksMatrix initializeCache.
	BpmFinishedTasksMatrix initializeCache.
	BpmTakenTasksMatrix initializeCache.
	BpmBackofficeRole initializeCache.
	BpmFrontOfficeRole initializeCache.
	BpmProcessDefinitionCategory initializeCache.
	BpmProcessInstanceCategory initializeCache.
	BpmProcessDynamicCategory initializeCache.
	BpmExceptionCalendar initializeCache.
	BpmProcessDefinition initializeCache.

	(Smalltalk at: #BpmDashboardRepository ifAbsent: [nil]) ifNil: [] ifNotNil: [:repositoryClass | repositoryClass initializeDefault]. "issue #653"
	self defaultTimerEventMonitor initializeDefault.