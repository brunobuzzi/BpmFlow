orbeon
generateNewAnonymousUrlFor: aBpmProcessDefinition taskName: taskName

	^self orbeonManager orbeonIP,'/orbeon/fr/', aBpmProcessDefinition applicationName ,'/',taskName, '/new'