other
ungrantRole: aBpmRole

	aBpmRole removeResponsibility: self.

	^roles remove: aBpmRole 
				ifAbsent: [NoSuchRoleException signal: 'The receiver has no such a role name [', aBpmRole name, ']']