user multi environment
checkIfAnyUsersIsInMoreThanOneEnvironment
	"Answer whether or not any <BpmUser> is in more than one <BpmEnvironment>"

	^(self cache reject: [:each | each name ~= self adminsEnvironmentName]) anySatisfy: [:eachUser | eachUser getBpmEnvironments size > 1]