application&process
getFinishedTaskAssignmentsInApplication: appName andProcess: procName
	"The receiver answer a collection with all finished assignments by any <BpmUser> in Application <appName> and BpmProcess <procName>"
	| assignments |

	assignments := OrderedCollection new.

	self usersDo: [:eachUser | | roles appAssignments |
			roles := user rolesIn: bpmEnvironment.
			appAssignments := (eachUser getFinishedAssignmentsIn: bpmEnvironment) select: {:each | (each.applicationName = appName) & (each.processName = procName)}.
			assignments addAll: (appAssignments select: [:assingment | roles identityIncludes: assingment role]).
	].

	^assignments