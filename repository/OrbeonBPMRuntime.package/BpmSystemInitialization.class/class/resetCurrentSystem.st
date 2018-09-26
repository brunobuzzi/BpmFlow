system initilization
resetCurrentSystem
	"This method will remove all objects in the System but it will keep <BpmUser>s"

	BpmProcessDefinition 
			removeAllDefinitions; 
			removeAllFormFieldInstances;
			initializeAnonymousFormMapping.

	BpmUser cache do: [:each | each resetMessagesBoxesAndRoles].
	BpmDashboardRepository initializeDefault.
	
	BpmProcessDefinitionCategory resetAllCategorizedProcesses.
	BpmProcessInstanceCategory resetAllCategorizedProcesses.
	BpmProcessDynamicCategory resetAllCategorizedProcesses.

	AbstractApplication initializeCache.

	BpmBackofficeRole initializeCache.
	BpmFrontOfficeRole initializeCache.

	self getAvailableTasksMatrixClass resetAllRolesAndAssignments.
	self getTakenTasksMatrixClass resetAllRolesAndAssignments.
	self getFinishedTasksMatrixClass resetAllRolesAndAssignments.

	self defaultTimerEventMonitor initializeDefault.