other
isGrantedUser: aBpmUser
	"Answer whether or not the user <aBpmUser> is granted in the receiver.
	If the process has been created by an anonymous user then everyone has read access"

	^process startEventIsAnonymous or: [definition isGrantedUser: aBpmUser]