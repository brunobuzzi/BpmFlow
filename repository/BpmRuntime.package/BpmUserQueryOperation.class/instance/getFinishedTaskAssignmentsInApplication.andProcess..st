application&process
getFinishedTaskAssignmentsInApplication: appName andProcess: procName
	"The receiver answer a collection with finished assignments by <BpmUsser> <user> in Application <appName> and BpmProcess <procName>"

	^(self user getFinishedAssignmentsIn: bpmEnvironment) select: {:each | (each.applicationName = appName) & (each.processName = procName)}