cache
createNewDashboardDefinitionNamed: aString in: aBpmEnvironment for: aBpmUser
	"The receiver create a new instance of itself named <aString> in environment <aBpmEnvironment> with owner <aBpmUser>"

	^self new
		name: aString;
		owner: aBpmUser;
		bpmEnvironment: aBpmEnvironment;
		yourself