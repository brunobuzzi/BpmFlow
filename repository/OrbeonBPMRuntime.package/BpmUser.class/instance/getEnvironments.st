applications
getEnvironments
	"The receiver answer a collection with all <BpmEnvironments> that has access to"

	^(self getApplications collect: [:eachApp | eachApp bpmEnvironment]) asSet