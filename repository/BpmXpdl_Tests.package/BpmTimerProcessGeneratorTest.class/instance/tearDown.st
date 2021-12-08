other
tearDown

	application unregisterProcessDefinition: (testRoot getLatestProcessDefinitionNamed: 'timer-process' in: self defaultApplicationName) 
					ifAbsent: [self assert: false].

	super tearDown.