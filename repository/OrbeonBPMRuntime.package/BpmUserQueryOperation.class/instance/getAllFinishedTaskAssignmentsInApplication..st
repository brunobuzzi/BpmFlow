application
getAllFinishedTaskAssignmentsInApplication: appName

	^self user getFinishedAssignments select: {:each | each.applicationName = appName}