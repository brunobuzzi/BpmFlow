cache
createNewDashboardDefinitionNamed: aString in: aBpmDashboardRepository for: aBpmUser
	"The receiver create a new instance of itself named <aString> in repository <aBpmDashboardRepository> with owner <aBpmUser>"

	^self new
		name: aString;
		owner: aBpmUser;
		dashboardRepository: aBpmDashboardRepository;
		yourself