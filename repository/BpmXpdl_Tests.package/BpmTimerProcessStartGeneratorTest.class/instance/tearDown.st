other
tearDown

	application unregisterProcessDefinition: (testRoot getLatestProcessDefinitionNamed: 'timer-process-start' in: self defaultApplicationName) 
					ifAbsent: [self assert: false].

	super tearDown.