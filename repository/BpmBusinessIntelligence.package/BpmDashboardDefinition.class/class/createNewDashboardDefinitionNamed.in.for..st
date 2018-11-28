other
createNewDashboardDefinitionNamed: aString in: aBpmEnvironment for: aBpmUser

	^BpmDashboardDefinition new
		name: aString;
		owner: aBpmUser;
		bpmEnvironment: aBpmEnvironment;
		yourself