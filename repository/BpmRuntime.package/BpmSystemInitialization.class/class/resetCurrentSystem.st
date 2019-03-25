system initilization
resetCurrentSystem
	"WARNING: This method will remove all objects in the System but it will keep <BpmUser>s"

	BpmProcessDefinition 
			removeAllDefinitions; 
			removeAllFormFieldInstances;
			initializeAnonymousFormMapping.

	self defaultBpmUserClass cache do: [:each | each resetMessagesBoxesAndRoles].
	(Smalltalk at: #BpmDashboardRepository ifAbsent: [nil]) ifNil: [] ifNotNil: [:repositoryClass | repositoryClass initializeDefault]. "issue #653"
	
	BpmProcessDefinitionCategory resetAllCategorizedProcesses.
	BpmProcessInstanceCategory resetAllCategorizedProcesses.
	BpmProcessDynamicCategory resetAllCategorizedProcesses.

	AbstractApplication initializeCache.

	BpmBackofficeRole initializeCache.
	BpmFrontOfficeRole initializeCache.

	self defaultAvailableTasksMatrixClass resetAllRolesAndAssignments.
	self defaultTakenTasksMatrixClass resetAllRolesAndAssignments.
	self defaultFinishedTasksMatrixClass resetAllRolesAndAssignments.

	self defaultTimerEventMonitor initializeDefault.