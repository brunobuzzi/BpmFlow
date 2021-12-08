other
tearDown

	application unregisterProcessDefinition: (testRoot getLatestProcessDefinitionNamed: 'multi-role' in: self defaultApplicationName) 
					ifAbsent: [self assert: false].

	super tearDown.