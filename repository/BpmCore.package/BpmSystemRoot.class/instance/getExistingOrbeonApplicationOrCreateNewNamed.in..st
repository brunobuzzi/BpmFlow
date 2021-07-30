orbeon
getExistingOrbeonApplicationOrCreateNewNamed: applicationName in: environmentName
	| environment |

	environment := self getExistingEnvironmentOrCreateNewNamed: environmentName.

	^environment 
			applicationNamed: applicationName 
			ifNone: [| application |
							application := self orbeonManager getExistingOrbeonApplicationOrCreateNewNamed: applicationName.
							application initializeForBpmFlow.
							environment registerApplication: application]