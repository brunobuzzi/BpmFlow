applications
getExistingBpmApplicationOrCreateNewNamed: applicationName in: environmentName
	| environment |

	environment := self getExistingEnvironmentOrCreateNewNamed: environmentName.

	^environment applicationNamed: applicationName 
							ifNone: [| application |
										application := BpmApplication new 
												applicationName: applicationName;
												initializeForBpmFlow;
												yourself.
										environment registerApplication: application.
										application
							]