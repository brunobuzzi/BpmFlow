application&process
getCurrentTaskAssignmentsInApplication: appName andProcess: procName
	"The receiver answer a collection with taken assignments by <BpmUsser> <user> in Application <appName> and BpmProcess <procName>"

	^(self user getCurrentAssignmentsIn: bpmEnvironment) select: {:each | (each.applicationName = appName) & (each.processName = procName)}