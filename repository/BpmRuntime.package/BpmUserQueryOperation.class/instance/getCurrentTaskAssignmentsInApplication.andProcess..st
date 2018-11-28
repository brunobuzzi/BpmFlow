application&process
getCurrentTaskAssignmentsInApplication: appName andProcess: procName

	^(self user getCurrentAssignmentsIn: bpmEnvironment) select: {:each | (each.applicationName = appName) & (each.processName = procName)}