application
getAllCurrentTaskAssignmentsInApplication: appName
	| assignments |

	assignments := OrderedCollection new.

	self getAllUsers do: [:eachUser | | roles appAssignments |
			roles := user roles.
			appAssignments := eachUser getCurrentAssignments select: {:each | each.applicationName = appName}.
			assignments addAll: (appAssignments select: [:assingment | roles identityIncludes: assingment role]).
	].

	^assignments