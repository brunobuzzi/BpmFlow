applications
getExistingBpmApplicationOrCreateNewNamed: applicationName in: environmentName
	| environment |

	environment := self getExistingEnvironmentOrCreateNewNamed: environmentName.

	^environment applicationNamed: applicationName 
							ifNone: [BpmApplication new 
											applicationName: applicationName;
											initializeForBpmFlow;
											yourself
							]