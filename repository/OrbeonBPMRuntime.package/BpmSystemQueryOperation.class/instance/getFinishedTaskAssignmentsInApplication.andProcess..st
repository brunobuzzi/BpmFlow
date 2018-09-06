application&process
getFinishedTaskAssignmentsInApplication: appName andProcess: procName
	| assignments |

	assignments := OrderedCollection new.

	self getAllUsers do: [:eachUser | | roles appAssignments |
			roles := user rolesIn: bpmEnvironment.
			appAssignments := (eachUser getFinishedAssignmentsIn: bpmEnvironment) select: {:each | (each.applicationName = appName) & (each.processName = procName)}.
			assignments addAll: (appAssignments select: [:assingment | roles identityIncludes: assingment role]).
	].

	^assignments