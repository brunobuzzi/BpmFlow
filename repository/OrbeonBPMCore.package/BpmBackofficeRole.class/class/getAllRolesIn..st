other
getAllRolesIn: aBpmEnvironment
	| allRols |

	allRols := OrderedCollection new.

	self cache asOrderedCollection do: [:each | allRols addAll: each].

	^allRols select: [:each | each bpmEnvironment == aBpmEnvironment]