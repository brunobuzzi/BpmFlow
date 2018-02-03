other
removeRole: aBpmRole

	^roles removeKey: aBpmRole name ifAbsent: [NoRoleException signal: 'No role named [', aBpmRole name, '] in this Process']