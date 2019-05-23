facilities
createStEnvironmentAndApplication
	| environment application |

	processExecutionSimulator := PEFBpmProcessExecutor new.

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-st'.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st'.

	environment registerApplication: application ifPresent: [] ifTaken: [].