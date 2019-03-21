application
getCurrentTaskAssignmentsInApplication: appName
	"The receiver answer a collection with taken assignments by <BpmUser> <user> in Application <appName>"

	^(self user getCurrentAssignmentsIn: bpmEnvironment) select: {:each | each.applicationName = appName}