process
getFinishedTaskAssignmentsInProcess: procName

	^(self user getFinishedAssignmentsIn: bpmEnvironment) select: {:each | each.processName = procName}