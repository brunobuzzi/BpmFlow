applications
getExistingBpmApplicationOrCreateNewNamed: applicationName
	| environment |

	environment := self getEnvironmentForApplicationNamed: applicationName.

	^self getExistingBpmApplicationOrCreateNewNamed: applicationName in: environment name