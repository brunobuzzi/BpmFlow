facilities
removeEnvironment: aBpmEnvironment andApplication: anApplication

	aBpmEnvironment unregisterApplication: anApplication;
		removeAllProcessesDefinitions.

	anApplication 
		removeAllRoles;
		removeFromCache.

	aBpmEnvironment removeFromCache.