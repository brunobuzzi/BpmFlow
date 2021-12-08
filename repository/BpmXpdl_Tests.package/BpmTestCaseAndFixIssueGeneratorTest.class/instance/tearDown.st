other
tearDown

	application unregisterProcessDefinition: self getFixIssueProcess ifAbsent: [self assert: false].
	application unregisterProcessDefinition: self getArchitectProcess ifAbsent: [self assert: false].
	application unregisterProcessDefinition: self getTestCaseProcess ifAbsent: [self assert: false].

	super tearDown.