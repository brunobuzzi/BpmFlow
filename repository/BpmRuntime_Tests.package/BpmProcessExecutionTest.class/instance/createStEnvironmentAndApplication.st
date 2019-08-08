facilities
createStEnvironmentAndApplication
	"The receiver creates the <aBpmEnvironment> named 'env-st' and <anOrbeonApplication> named 'st'.
	This combination of Environment and Application is used in a wide range of tests"
	| environment application |

	processExecutionSimulator := PEFBpmProcessExecutor new.

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-st'.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st'.

	environment registerApplication: application ifPresent: [] ifTaken: [].