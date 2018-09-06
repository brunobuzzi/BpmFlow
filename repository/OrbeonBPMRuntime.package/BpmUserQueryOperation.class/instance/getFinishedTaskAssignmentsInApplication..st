application
getFinishedTaskAssignmentsInApplication: appName

	^(self user getFinishedAssignmentsIn: bpmEnvironment) select: {:each | each.applicationName = appName}