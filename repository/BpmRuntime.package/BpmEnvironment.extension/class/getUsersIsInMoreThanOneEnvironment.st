*bpmruntime
getUsersIsInMoreThanOneEnvironment
	"Answer a collection of <BpmUser> is in more than one <BpmEnvironment>."

	^self defaultBpmUserClass cache select: [:eachUser | (eachUser getBpmEnvironments size > 1)]