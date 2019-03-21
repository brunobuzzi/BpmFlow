process
getCurrentTaskAssignmentsInProcess: procName
	"The receiver answer a collection with taken assignments by <BpmUser> <user> in BpmProcess <procName> (the Application is ignored)"

	^(self user getCurrentAssignmentsIn: bpmEnvironment) select: {:each | each.processName = procName}