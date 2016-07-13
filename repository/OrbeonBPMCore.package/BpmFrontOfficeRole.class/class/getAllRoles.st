other
getAllRoles
	| allRols |

	allRols := OrderedCollection new.

	BpmFrontOfficeRole cache asOrderedCollection do: [:each | allRols addAll: each].

	^allRols