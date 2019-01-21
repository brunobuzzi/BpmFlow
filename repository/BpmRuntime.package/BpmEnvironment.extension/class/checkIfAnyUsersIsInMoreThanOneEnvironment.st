*bpmruntime
checkIfAnyUsersIsInMoreThanOneEnvironment
	"Answer whether or not any <BpmUser> is in more than one <BpmEnvironment>.
	The admin user can be in more than one environment even if the system is set as users non muti environment (AreUsersMultiEnvironment := false)"

	^(BpmUser cache reject: [:eachUser | eachUser isInAdminEnvironment]) anySatisfy: [:eachUser | eachUser getBpmEnvironments size > 1]