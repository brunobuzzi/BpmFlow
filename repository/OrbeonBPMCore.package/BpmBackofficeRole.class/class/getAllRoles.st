other
getAllRoles
	| allRols |

	allRols := OrderedCollection new.

	self cache asOrderedCollection do: [:each | allRols addAll: each].

	^allRols