facilities
createUeEnvironmentAndApplication
	"The receiver creates the <aBpmEnvironment> named 'env-ue' and <anOrbeonApplication> named 'ue'.
	This combination of Environment and Application is used in a wide range of tests"
	| environment application |

	processExecutionSimulator := PEFBpmProcessExecutor new.

	environment := testRoot getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	application := testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue'.

	environment registerApplication: application ifPresent: [] ifTaken: [].