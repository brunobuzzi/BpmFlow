facilities
removeStEnvironmentAndApplication
	| environment application |

	environment := testRoot getExistingEnvironmentOrCreateNewNamed: 'env-st'.

	application := testRoot getExistingBpmApplicationOrCreateNewNamed: 'st' in: 'env-st'.

	self removeEnvironment: environment andApplication: application