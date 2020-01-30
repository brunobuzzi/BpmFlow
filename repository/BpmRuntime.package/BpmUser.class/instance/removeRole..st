roles
removeRole: aBpmRole
	"The receiver remove <aBpmRole> from <roles> collection.
	Now the user is ungranted to <aBpmRole> tasks and assignments"

	^self removeRole: aBpmRole ifAbsent: [NoRoleForThisUserException signal: 'The user [', self username, '] is not assigned to role [', aBpmRole name, ']']