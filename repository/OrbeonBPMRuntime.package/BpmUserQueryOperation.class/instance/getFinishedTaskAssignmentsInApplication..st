application
getFinishedTaskAssignmentsInApplication: appName

	^self user getFinishedAssignments select: {:each | each.applicationName = appName}