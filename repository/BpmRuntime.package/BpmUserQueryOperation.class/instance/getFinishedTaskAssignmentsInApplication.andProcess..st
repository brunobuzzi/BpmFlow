application&process
getFinishedTaskAssignmentsInApplication: appName andProcess: procName

	^(self user getFinishedAssignmentsIn: bpmEnvironment) select: {:each | (each.applicationName = appName) & (each.processName = procName)}