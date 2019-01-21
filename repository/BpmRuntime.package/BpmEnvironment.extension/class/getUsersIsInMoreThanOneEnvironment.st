*bpmruntime
getUsersIsInMoreThanOneEnvironment
	"Answer a collection of <BpmUser> is in more than one <BpmEnvironment>."

	^BpmUser cache select: [:eachUser | (eachUser getBpmEnvironments size > 1)]