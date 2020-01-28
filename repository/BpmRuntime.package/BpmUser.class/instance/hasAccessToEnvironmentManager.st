bpm environments
hasAccessToEnvironmentManager
	"Answer whether or not the receiver has access to the web component to configure Environments, Applications and Users.
	The receiver has to be in Admin Environment and has to have a Backoffice admin role in it"

	^self isInAdminsEnvironment and: [self isBackofficeUserAndAdminIn: self defaultEnvironmentClass getAdminsEnvironment]