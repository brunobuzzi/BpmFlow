other
getGrantedUsers
	"Answer a collection of the granted roles of the receiver"
	| grantedUsers |

	grantedUsers := OrderedCollection new.

	self getRoles do: [:each | grantedUsers addAll: each users ].

	^grantedUsers