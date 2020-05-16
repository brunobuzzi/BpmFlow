users
registerUserGroup: aBpmUserGroup ifPresent: aBlock
	"The receiver register the user group <aBpmUserGroup>"

	aBpmUserGroup environment ifNotNil: [:value | ^ImproperBpmOperationException signal: 'The User Group is already register in environment [', aBpmUserGroup environment name, ']'].
 
	(self includesUserGroupNamed: aBpmUserGroup name) ifTrue: [^aBlock value]. 

	aBpmUserGroup environment: self.

	^userGroups at: aBpmUserGroup name put: aBpmUserGroup