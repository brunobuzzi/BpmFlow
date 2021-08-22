application
getFinishedTaskAssignmentsInApplication: appName
	"The receiver answer a collection with finished assignments by <BpmUser> <user> in Application <appName>"

	^(self user getFinishedAssignmentsIn: bpmEnvironment) select: {:each | each.applicationName = appName}