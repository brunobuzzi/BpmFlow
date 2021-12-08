other
tearDown

	application unregisterProcessDefinition: self getEmbedded01Process ifAbsent: [self assert: false].
	application unregisterProcessDefinition: self getEmbedded02Process ifAbsent: [self assert: false].
	application unregisterProcessDefinition: self getTopProcess ifAbsent: [self assert: false].

	super tearDown.