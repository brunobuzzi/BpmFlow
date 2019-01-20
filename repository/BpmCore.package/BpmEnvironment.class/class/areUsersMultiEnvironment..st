user multi environment
areUsersMultiEnvironment: aBoolean
	"Set whether or not <aBpmUser> can be assigned to more than one <aBpmEnvironment>.
	See issue: #779"

	(aBoolean not "false" and: [self checkIfAnyUsersIsInMoreThanOneEnvironment]) 
	ifTrue: [ImproperBpmOperationException signal: 'Remove BpmUsers in more than one Environment before set this to [false]'].

	^AreUsersMultiEnvironment := aBoolean

"For BpmEnvironments there are two different scenarios:
1- A user have access to N environments (in goverment is common requirement to the app to be multi tenant with a user have access to N tenants)
2- A user has access to 1 environment. An installation to handle different clients (companies) with the same Bpm application (bpm as a service).

For option 1 the login page render user, password and combo with environments.
For option 2 the login pager render user and password (the environment is set automatically).
"