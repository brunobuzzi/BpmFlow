system initilization
resetCurrentSystem
	"WARNING: This method will remove all objects in the System but it will keep <BpmEnvironment> and <BpmUser> "

	self defaultEnvironmentClass 
		removeAllProcessesDefinitions;
		removeAllFormFieldInstances.

	self defaultProcessDefinitionClass initializeAnonymousFormMapping.

	self defaultBpmUserClass cache do: [:each | each resetMessagesBoxesAndRoles].

	BpmProcessDefinitionCategory resetAllCategorizedProcesses.
	BpmProcessInstanceCategory resetAllCategorizedProcesses.
	BpmProcessDynamicCategory resetAllCategorizedProcesses.

	self defaultApplicationManagerClass doInCache: [:eachApp | eachApp isAdminApplication ifFalse: [eachApp removeFromCache]].

	self defaultEnvironmentClass resetAllRolesAndAssignments.

	self defaultTimerEventMonitor initializeDefault.