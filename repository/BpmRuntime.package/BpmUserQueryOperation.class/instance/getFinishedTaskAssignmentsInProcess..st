process
getFinishedTaskAssignmentsInProcess: procName
	"The receiver answer a collection with finished assignments by <BpmUser> <user> in BpmProcess <procName> (the Application is ignored)"

	^(self user getFinishedAssignmentsIn: bpmEnvironment) select: {:each | each.processName = procName}