other
getDashboardOrCreateNewNamed: aString in: aBpmEnvironment for: aBpmUser
	| repository dashboardDefinition |

	repository := self dashboardRepositoryFor: aBpmEnvironment.

	dashboardDefinition := repository getDashboardNamed: aString for: aBpmUser ifAbsent: [self createNewDashboardDefinitionNamed: aString in: aBpmEnvironment for: aBpmUser].

	^dashboardDefinition addToCache