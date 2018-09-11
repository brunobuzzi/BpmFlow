other
setUp
	| application environment |

	super setUp.

	environment := BpmEnvironment getExistingEnvironmentOrCreateNewNamed: 'env-ue'.

	application := self getOrbeonApplicationClass 
							getAnyApplicationNamed: 'ue' 
							ifNone: [(self getOrbeonApplicationClass newNamed: 'ue') addToCache].

	application hasBpmEnvironment ifFalse: [environment registerApplication: application].