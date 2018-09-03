applications
getEnvironments
	"The receiver answer a collection with all <BpmEnvironments> that has access to"

	self isBackofficeUserAndAdmin ifTrue: [^BpmEnvironment cache].

	^(self getApplications collect: [:eachApp | eachApp bpmEnvironment]) asSet