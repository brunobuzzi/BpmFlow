roles
getAllBackOfficeRoles
	"Answer a collection with all backoffice roles of the receiver"
	| allRoles |

	allRoles := Set new.
	applications do: [:eachApp | eachApp backofficeRolesDo: [:role | allRoles add: role]].

	^allRoles asOrderedCollection