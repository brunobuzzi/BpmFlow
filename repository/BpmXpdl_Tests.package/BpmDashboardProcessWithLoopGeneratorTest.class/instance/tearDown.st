other
tearDown

	application unregisterProcessDefinition: self getProcessWithLoop ifAbsent: [self assert: false].

	super tearDown.