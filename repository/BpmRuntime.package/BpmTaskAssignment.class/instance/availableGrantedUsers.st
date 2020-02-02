access
availableGrantedUsers
	"Answer a collection of possible users that can take the receiver (includes direct and inherit users).
	Direct users: users that are assigned directly to the <role>.
	Inherit users: users that are assigned to user groups that includes the <role>"

	^role getAllGrantedUsers