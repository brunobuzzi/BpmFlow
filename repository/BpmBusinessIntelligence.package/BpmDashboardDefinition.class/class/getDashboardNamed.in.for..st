cache
getDashboardNamed: aString in: aBpmEnvironment for: aBpmUser
	"The receiver answer <aBpmDashboardDefinition> named <aString> in environment <aBpmEnvironment> owned by user <aBpmUser>"
	| repository dashboardDefinition |

	repository := self dashboardRepositoryFor: aBpmEnvironment.

	dashboardDefinition := repository getDashboardNamed: aString for: aBpmUser ifAbsent: [^nil].

	^dashboardDefinition