environments
unregisterEnvironment: aBpmEnvironment 

	(self adminsEnvironmentName = aBpmEnvironment name) ifTrue: [ImproperBpmOperationException signal: '[admins] Environment can not be removed'].

	aBpmEnvironment canDelete ifFalse: [ImproperBpmOperationException signal: 'This Environment can not be removed check if [applications and users] are not empty'].

	^self unregisterEnvironment: aBpmEnvironment ifAbsent: []