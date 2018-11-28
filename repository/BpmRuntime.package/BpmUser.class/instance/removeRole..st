roles
removeRole: aBpmRole
	"The receiver remove <aBpmRole> from <roles> collection.
	Now the user is ungranted to <aBpmRole> tasks and assignments"

	^roles remove: aBpmRole ifAbsent: [NoRoleForThisUserException signal: 'The user [', self username, '] is not assigned to role [', aBpmRole name, ']']