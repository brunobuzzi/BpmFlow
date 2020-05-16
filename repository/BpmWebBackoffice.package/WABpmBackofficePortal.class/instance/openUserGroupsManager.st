subcomponents
openUserGroupsManager

	(arena isKindOf: WABpmUserGroupsManager)
	ifTrue: [^arena].

	^WABpmUserGroupsManager parent: self