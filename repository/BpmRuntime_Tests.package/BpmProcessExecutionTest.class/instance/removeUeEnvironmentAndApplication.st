facilities
removeUeEnvironmentAndApplication
	| environment application |

	environment := testRoot getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	application := testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue'.

	self removeEnvironment: environment andApplication: application