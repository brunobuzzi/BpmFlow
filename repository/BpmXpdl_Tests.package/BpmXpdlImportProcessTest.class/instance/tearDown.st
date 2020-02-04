other
tearDown

	super tearDown.

	self getDefaultEnvironment unregisterApplication: self getDefaultApplication.

	importProcess generatedProcesses do: [:each | each resetFormFieldInstances; removeFromCache].
 
	self getDefaultApplication resetDefinitionRegistry.
	(self defaultApplicationManagerClass getRolesInAppName: self getDefaultApplication applicationName) do: [:each | each removeFromCache].
 
	self getDefaultApplication removeFromCache.

	self getDefaultEnvironment removeFromCache.