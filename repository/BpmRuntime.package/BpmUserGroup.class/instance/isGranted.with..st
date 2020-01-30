roles
isGranted: aBpmUser with: aBpmRole
	"Answer whether or not <aBpmUser> is granted with <aBpmRole> in the receiver"

	^(self includesUser: aBpmUser) and: [self includesRole: aBpmRole]