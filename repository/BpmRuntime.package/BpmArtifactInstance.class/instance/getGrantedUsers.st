other
getGrantedUsers
	"Answer a collection of the granted users of the receiver (including user groups)"
	| grantedUsers |

	grantedUsers := OrderedCollection new.

	self rolesDo: [:eachRole | grantedUsers addAll: eachRole getAllGrantedUsers].

	^grantedUsers