facilities
createStEnvironmentAndApplication
	"The receiver creates the <aBpmEnvironment> named 'env-st' and <anOrbeonApplication> named 'st'.
	This combination of Environment and Application is used in a wide range of tests"
	| environment application |

	processExecutionSimulator := PEFBpmProcessExecutor newOn: testRoot.

	environment := testRoot getExistingEnvironmentOrCreateNewNamed: 'env-st'.

	application := testRoot getExistingBpmApplicationOrCreateNewNamed: 'st' in: 'env-st'.

	environment registerApplication: application ifPresent: [] ifTaken: [].