other
getAllRoles
	"Answer a collection with all roles all caches (frontoffice and backoffice)"
	| allRols |

	allRols := OrderedCollection new.

	(BpmFrontOfficeRole cache asOrderedCollection, BpmBackofficeRole cache asOrderedCollection) 
	do: [:each | allRols addAll: each].

	^allRols