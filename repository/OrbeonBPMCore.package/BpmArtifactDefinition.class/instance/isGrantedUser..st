roles
isGrantedUser: aBpmUser
	"Answer whether or not the user <aBpmUser> is granted in the receiver"

	^roles anySatisfy: [:each | each isGranted: aBpmUser]