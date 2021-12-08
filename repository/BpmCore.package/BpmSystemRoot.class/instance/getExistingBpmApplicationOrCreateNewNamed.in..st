applications
getExistingBpmApplicationOrCreateNewNamed: applicationName in: environmentName
	| environment |

	environment := self getExistingEnvironmentOrCreateNewNamed: environmentName.

	^environment applicationNamed: applicationName 
							ifNone: [| application |
										application := BpmApplication newNamed: applicationName on: self.
										application
												initializeForBpmFlow;
												yourself.
										environment registerApplication: application.
										application
							]