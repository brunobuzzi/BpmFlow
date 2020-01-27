roles
addRole: aBpmRole

	(aBpmRole application == application) ifFalse: [^ImproperBpmOperationException signal: 'The user group application and role application must be the same'].

	aBpmRole addGroup: self.

	^roles add: aBpmRole