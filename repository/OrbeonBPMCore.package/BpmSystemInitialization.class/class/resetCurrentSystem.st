other
resetCurrentSystem
	"This method will remove all objects in the System but it will keep <BpmUser>s"

	BpmProcessDefinition 
			removeAllDefinitions; 
			removeAllFormFieldInstances;
			initializeAnonymousFormMapping.

	BpmUser cache do: [:each | each resetAll].
	
	BpmProcessInstance resetAll.
	BpmProcessCategory resetAll.

	AbstractApplication initializeCache.

	BpmBackofficeRole initializeCache.
	BpmFrontOfficeRole initializeCache.

	self getAvailableTasksMatrixClass initializeCache.
	self getTakenTasksMatrixClass initializeCache.
	self getFinishedTasksMatrixClass initializeCache.