application&process
getAllCurrentTaskAssignmentsInApplication: appName andProcess: procName
	| assignments |

	assignments := user getAllAvailableTaskAssignments select: [:each | (each applicationName = appName) and: [each processName = procName] ].

	self getAllUsers do: [:eachUser | | roles appAssignments |
			roles := user roles.
			appAssignments := eachUser getCurrentAssignments select: {:each | (each.applicationName = appName) & (each.processName = procName)}.
			assignments addAll: (appAssignments select: [:assingment | roles identityIncludes: assingment role]).
	].

	^assignments