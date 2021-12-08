other
tearDown

	application unregisterProcessDefinition: self getEmbeddedSubProcess ifAbsent: [self assert: false].
	application unregisterProcessDefinition: self getReusableSubProcess ifAbsent: [self assert: false].
	application unregisterProcessDefinition: self getTopProcess ifAbsent: [self assert: false].

	super tearDown.