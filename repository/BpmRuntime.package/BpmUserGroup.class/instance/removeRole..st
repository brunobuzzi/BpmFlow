roles
removeRole: aBpmRole

	^self removeRole: aBpmRole ifAbsent: [NoRoleException signal:  'The user group [', name ,'] does not includes the role [', aBpmRole username, ']' ]