other
getAllRolesIn: aBpmEnvironment
	"Answer a collection with all roles all caches (frontoffice and backoffice)"
	| allRols |

	allRols := OrderedCollection new.

	((BpmFrontOfficeRole cache asOrderedCollection, BpmBackofficeRole cache asOrderedCollection) select: [:each | each bpmEnvironment == aBpmEnvironment]) 
		do: [:each | allRols addAll: each].

	^allRols