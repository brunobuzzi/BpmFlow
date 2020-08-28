facilities
removeStEnvironmentAndApplication
	| environment application |

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-st'.

	application := self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'st'.

	self removeEnvironment: environment andApplication: application