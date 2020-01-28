roles
isGrantedUser: aBpmUser
	"Answer whether or not the user <aBpmUser> is granted in the receiver"

	^((aBpmUser rolesIn: self bpmEnvironment) intersection: roles) notEmpty