roles
getAllFrontOfficeRoles
	"Answer a collection with all frontoffice roles of the receiver"
	| allRoles |

	allRoles := Set new.
	applications do: [:eachApp | eachApp frontofficeRolesDo: [:role | allRoles add: role]].

	^allRoles asOrderedCollection