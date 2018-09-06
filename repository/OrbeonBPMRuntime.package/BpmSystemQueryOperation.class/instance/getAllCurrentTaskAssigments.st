no filter
getAllCurrentTaskAssigments
	| assignments |

	assignments := user getAllAvailableTaskAssignmentsIn: bpmEnvironment.

	self getAllUsers do: [:eachUser | | roles |
			roles := user rolesIn: bpmEnvironment.
			assignments addAll: ((eachUser getCurrentAssignmentsIn: bpmEnvironment) select: [:assingment | (roles identityIncludes: assingment role) and: [assingment isAvailableFor: user]]).
	].

	^assignments