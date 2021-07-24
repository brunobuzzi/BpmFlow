other
tearDown

	super tearDown.

	self getDefaultEnvironment unregisterApplication: self getDefaultApplication.

	importProcess generatedProcessesDo: [:each | each resetFormFieldInstances; removeFromCache].
 
	self getDefaultApplication resetDefinitionRegistry.
	(testRoot getRolesInAppName: self getDefaultApplication applicationName) do: [:each | each removeFromCache].
 
	self getDefaultApplication removeFromCache.

	self getDefaultEnvironment removeFromCache.