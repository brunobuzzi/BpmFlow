application&process
getFinishedTaskAssignmentsInApplication: appName andProcess: procName

	^self user getFinishedAssignments select: {:each | (each.applicationName = appName) & (each.processName = procName)}