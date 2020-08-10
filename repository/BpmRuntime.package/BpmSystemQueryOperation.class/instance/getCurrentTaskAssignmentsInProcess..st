process
getCurrentTaskAssignmentsInProcess: procName
	"The receiver answer a collection with all taken assignments (by any user) in BpmProcess <procName> (the Application is ignored)"
	| assignments |

	assignments := (user getAllAvailableTaskAssignmentsIn: bpmEnvironment) select: [:each | each processName = procName].

	self usersDo: [:eachUser | | roles appAssignments |
			roles := user rolesIn: bpmEnvironment.
			appAssignments := (eachUser getCurrentAssignmentsIn: bpmEnvironment) select: {:each | each.processName = procName}.
			assignments addAll: (appAssignments select: [:assingment | roles identityIncludes: assingment role]).
	].

	^assignments