*bpmRuntime
getUsersIsInMoreThanOneEnvironment
	"Answer a collection of <BpmUser> is in more than one <BpmEnvironment>."

	^applicationUsers select: [:eachUser | (eachUser getBpmEnvironments size > 1)]