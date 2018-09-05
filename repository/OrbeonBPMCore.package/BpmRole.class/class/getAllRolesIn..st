other
getAllRolesIn: aBpmEnvironment
	"Answer a collection with all roles all caches (frontoffice and backoffice)"
	| allRols |

	allRols := OrderedCollection new.

	(BpmFrontOfficeRole cache asOrderedCollection, BpmBackofficeRole cache asOrderedCollection) 
		do: [:eachCollection | allRols addAll: eachCollection].

	^allRols select: [:each | each bpmEnvironment == aBpmEnvironment]