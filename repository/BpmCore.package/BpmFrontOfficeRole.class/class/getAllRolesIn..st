other
getAllRolesIn: aBpmEnvironment
	| allRols |

	allRols := OrderedCollection new.

	self cache asOrderedCollection do: [:eachCollection | allRols addAll: eachCollection].

	^allRols select: [:each | each bpmEnvironment == aBpmEnvironment]