application
getCurrentTaskAssignmentsInApplication: appName

	^(self user getCurrentAssignmentsIn: bpmEnvironment) select: {:each | each.applicationName = appName}