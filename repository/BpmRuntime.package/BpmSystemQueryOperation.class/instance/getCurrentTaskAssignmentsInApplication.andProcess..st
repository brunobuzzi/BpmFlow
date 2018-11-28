application&process
getCurrentTaskAssignmentsInApplication: appName andProcess: procName
	| assignments |

	assignments := (user getAllAvailableTaskAssignmentsIn: bpmEnvironment) select: [:each | (each applicationName = appName) and: [each processName = procName] ].

	self getAllUsers do: [:eachUser | | roles appAssignments |
			roles := user rolesIn: bpmEnvironment.
			appAssignments := (eachUser getCurrentAssignmentsIn: bpmEnvironment) select: {:each | (each.applicationName = appName) & (each.processName = procName)}.
			assignments addAll: (appAssignments select: [:assingment | roles identityIncludes: assingment role]).
	].

	^assignments