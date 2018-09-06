no filter
getAllFinishedTaskAssignments
	| assignments |

	assignments := OrderedCollection new.

	self getAllUsers do: [:eachUser | | roles |
			roles := user rolesIn: bpmEnvironment.
			assignments addAll: ((eachUser getFinishedAssignmentsIn: bpmEnvironment) select: [:assingment | (roles identityIncludes: assingment role) and: [assingment isAvailableFor: user]]).
	].

	^assignments