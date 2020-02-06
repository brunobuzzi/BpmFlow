system initilization
initializeCurrentSystem
	"WARNING: THIS METHOD WILL DELETE ALL ROOT OBJECTS FROM THE SYSTEM"

	self defaultEnvironmentClass initializeCache.
	self defaultApplicationManagerClass initializeCache.
	self defaultBpmUserClass initializeCache.
	self defaultApplicationUserClass initializeCache.

	self defaultProcessDefinitionClass initializeAnonymousFormMapping.
	self defaultAvailableTasksMatrixClass initializeCache.
	self defaultFinishedTasksMatrixClass initializeCache.
	self defaultTakenTasksMatrixClass initializeCache.
	BpmProcessDefinitionCategory initializeCache.
	BpmProcessInstanceCategory initializeCache.
	BpmProcessDynamicCategory initializeCache.

	(Smalltalk at: #BpmDashboardRepository ifAbsent: [nil]) ifNil: [] ifNotNil: [:repositoryClass | repositoryClass initializeDefault]. "issue #653"
	self defaultTimerEventMonitor class initializeDefault.