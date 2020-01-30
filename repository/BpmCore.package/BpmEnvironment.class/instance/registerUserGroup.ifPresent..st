users
registerUserGroup: aBpmUserGroup ifPresent: aBlock
	"The receiver register the user group <aBpmUserGroup>"

	(self includesUserGroupNamed: aBpmUserGroup name) ifTrue: [^aBlock value]. 

	aBpmUserGroup environment: self.

	^userGroups at: aBpmUserGroup name put: aBpmUserGroup