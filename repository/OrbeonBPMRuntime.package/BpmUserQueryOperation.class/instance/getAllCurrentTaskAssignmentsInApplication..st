application
getAllCurrentTaskAssignmentsInApplication: appName

	^self user getCurrentAssignments select: {:each | each.applicationName = appName}