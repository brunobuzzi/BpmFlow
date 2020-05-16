roles
ungrantRole: aBpmRole
	"The receiver ungrant access to role <aBpmRole>"

	aBpmRole removeResponsibility: self. "remove the receiver from tasks dictionary of <aBpmRole>"

	^roles remove: aBpmRole 
				ifAbsent: [NoSuchRoleException signal: 'The receiver has no such a role name [', aBpmRole name, ']']