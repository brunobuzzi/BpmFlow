facilities
createUeEnvironmentAndApplication
	| environment application |

	processExecutionSimulator := PEFBpmProcessExecutor new.

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue'.

	environment registerApplication: application ifPresent: [] ifTaken: [].