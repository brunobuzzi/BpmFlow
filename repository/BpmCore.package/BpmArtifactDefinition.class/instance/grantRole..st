roles
grantRole: aBpmRole
	"The receiver grant access to role <aBpmRole>"

	aBpmRole addResponsibility: self. "add the receiver to tasks dictionary of <aBpmRole>"

	^roles add: aBpmRole