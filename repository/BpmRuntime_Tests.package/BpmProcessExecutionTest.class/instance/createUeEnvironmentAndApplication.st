facilities
createUeEnvironmentAndApplication
	"The receiver creates the <aBpmEnvironment> named 'env-ue' and <anOrbeonApplication> named 'ue'.
	This combination of Environment and Application is used in a wide range of tests"
	| environment application |

	processExecutionSimulator := PEFBpmProcessExecutor new.

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	application := self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'ue'.

	environment registerApplication: application ifPresent: [] ifTaken: [].