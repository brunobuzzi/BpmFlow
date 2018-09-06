application
getFinishedTaskAssignmentsInApplication: appName
	| assignments |

	assignments := OrderedCollection new.

	self getAllUsers do: [:eachUser | | roles appAssignments |
			roles := user rolesIn: bpmEnvironment.
			appAssignments := (eachUser getFinishedAssignmentsIn: bpmEnvironment) select: {:each | each.applicationName = appName}.
			assignments addAll: (appAssignments select: [:assingment | roles identityIncludes: assingment role]).
	].

	^assignments