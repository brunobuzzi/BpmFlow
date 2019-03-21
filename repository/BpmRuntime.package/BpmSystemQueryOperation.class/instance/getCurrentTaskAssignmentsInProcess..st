process
getCurrentTaskAssignmentsInProcess: procName
	| assignments |

	assignments := (user getAllAvailableTaskAssignmentsIn: bpmEnvironment) select: [:each | each processName = procName].

	self getAllUsers do: [:eachUser | | roles appAssignments |
			roles := user rolesIn: bpmEnvironment.
			appAssignments := (eachUser getCurrentAssignmentsIn: bpmEnvironment) select: {:each | each.processName = procName}.
			assignments addAll: (appAssignments select: [:assingment | roles identityIncludes: assingment role]).
	].

	^assignments