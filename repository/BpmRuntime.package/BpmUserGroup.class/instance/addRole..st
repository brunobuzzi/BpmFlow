roles
addRole: aBpmRole

	(aBpmRole bpmEnvironment == environment) ifFalse: [^ImproperBpmOperationException signal: 'Application of role [', aBpmRole name, '] is not register in User Group environment'].

	aBpmRole addGroup: self.

	^roles add: aBpmRole