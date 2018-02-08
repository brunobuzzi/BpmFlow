no filter
getAllCurrentTaskAssigments
	| assignments |

	assignments := OrderedCollection new.

	self getAllUsers do: [:eachUser | | roles |
			roles := user roles.
			assignments addAll: (eachUser getCurrentAssignments select: [:assingment | roles identityIncludes: assingment role]).
	].

	^assignments