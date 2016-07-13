other
grantUser: aBpmUser
	"The user <aBpmUser> is granted in the receiver"

	users at: aBpmUser username put: aBpmUser.

	^aBpmUser addRole: self