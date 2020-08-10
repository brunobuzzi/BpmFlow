application
getCurrentTaskAssignmentsInApplication: appName
	"The receiver answer a collection with all taken assignments by any <BpmUser> in Application <appName>"
	| assignments |

	assignments := (user getAllAvailableTaskAssignmentsIn: bpmEnvironment) select: [:each | each applicationName = appName].

	self usersDo: [:eachUser | | roles appAssignments |
			roles := user rolesIn: bpmEnvironment.
			appAssignments := (eachUser getCurrentAssignmentsIn: bpmEnvironment) select: {:each | each.applicationName = appName}.
			assignments addAll: (appAssignments select: [:assingment | roles identityIncludes: assingment role]).
	].

	^assignments