process
getCurrentTaskAssignmentsInProcess: procName

	^(self user getCurrentAssignmentsIn: bpmEnvironment) select: {:each | each.processName = procName}