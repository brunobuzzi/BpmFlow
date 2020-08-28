facilities
removeUeEnvironmentAndApplication
	| environment application |

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	application := self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'ue'.

	self removeEnvironment: environment andApplication: application