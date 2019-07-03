cache
getDashboardOrCreateNewNamed: aString in: aBpmEnvironment for: aBpmUser
	"The receiver answer <aBpmDashboardDefinition> or create a new one named <aString> in environment <aBpmEnvironment> owned by user <aBpmUser>"
	| repository dashboardDefinition |

	repository := self dashboardRepositoryFor: aBpmEnvironment.

	dashboardDefinition := repository getDashboardNamed: aString for: aBpmUser ifAbsent: [self createNewDashboardDefinitionNamed: aString in: aBpmEnvironment for: aBpmUser].

	^dashboardDefinition addToCache