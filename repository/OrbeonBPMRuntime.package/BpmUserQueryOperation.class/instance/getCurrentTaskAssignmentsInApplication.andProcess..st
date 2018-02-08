application&process
getCurrentTaskAssignmentsInApplication: appName andProcess: procName

	^self user getCurrentAssignments select: {:each | (each.applicationName = appName) & (each.processName = procName)}