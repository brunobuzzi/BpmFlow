application&process
getAllFinishedTaskAssignmentsInApplication: appName andProcess: procName

	^self user getFinishedAssignments select: {:each | (each.applicationName = appName) & (each.processName = procName)}