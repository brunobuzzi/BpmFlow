other
getDashboardNamed: aString in: aBpmEnvironment for: aBpmUser
	| repository dashboardDefinition |

	repository := self dashboardRepositoryFor: aBpmEnvironment.

	dashboardDefinition := repository getDashboardNamed: aString for: aBpmUser ifAbsent: [^nil].

	^dashboardDefinition