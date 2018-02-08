no filter
getAllFinishedTaskAssignments
	| assignments |

	assignments := OrderedCollection new.

	self getAllUsers do: [:eachUser | | roles |
			roles := user roles.
			assignments addAll: (eachUser getFinishedAssignments select: [:assingment | roles identityIncludes: assingment role]).
	].

	^assignments