other
setUp
	| application environment |

	super setUp.

	processExecutionSimulator := PEFBpmProcessExecutor new.

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue-test'.

	application := self getOrbeonApplicationClass 
							getAnyApplicationNamed: 'ue-test' 
							ifNone: [(self getOrbeonApplicationClass newNamed: 'ue-test') addToCache].

	application hasBpmEnvironment ifFalse: [environment registerApplication: application].