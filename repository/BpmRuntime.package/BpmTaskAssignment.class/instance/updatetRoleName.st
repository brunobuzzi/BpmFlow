other
updatetRoleName
	| nextRole |

	nextRole := self getNextRoleIfNone: [^roleName].

	roleName := nextRole name