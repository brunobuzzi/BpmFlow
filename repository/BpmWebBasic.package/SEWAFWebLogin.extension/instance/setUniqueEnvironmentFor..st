*bpmwebbasic
setUniqueEnvironmentFor: aBpmUser

	self session bpmEnvironment: aBpmUser getBpmEnvironments asOrderedCollection last