other
getAllRoles
	"Answer a collection with all <BpmRole> that perform at least one task in the receiver"
	| allRoles |

	allRoles := OrderedCollection new.

	tasks do: [:eachTask | 
		eachTask rolesDo: [:eachRole | allRoles add: eachRole]].

	^allRoles