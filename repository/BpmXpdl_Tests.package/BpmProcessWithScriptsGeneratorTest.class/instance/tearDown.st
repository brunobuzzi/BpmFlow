other
tearDown

	application unregisterProcessDefinition: self getScriptProcess ifAbsent: [self assert: false].

	super tearDown.