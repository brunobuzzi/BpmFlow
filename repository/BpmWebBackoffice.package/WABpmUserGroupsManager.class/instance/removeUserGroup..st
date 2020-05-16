commands
removeUserGroup: aBpmUserGroup

	(self componentValueAt: 'removeUserGroup') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self session bpmEnvironment unregisterUserGroup: aBpmUserGroup.

	usersGroupsBatchedList items remove: aBpmUserGroup