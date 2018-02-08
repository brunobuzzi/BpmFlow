no filter
getAllCurrentTaskAssigments
	| assignments |

	assignments := user getAllAvailableTaskAssignments.

	self getAllUsers do: [:eachUser | | roles |
			roles := user roles.
			assignments addAll: (eachUser getCurrentAssignments select: [:assingment | (roles identityIncludes: assingment role) and: [assingment isAvailableFor: user]]).
	].

	^assignments