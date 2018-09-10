other
deleteMessage: aBpmInternalMessage

	(self componentValueAt: 'deleteMessage') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self isSystemInboxSelected ifTrue: [(self session user getSystemNotificationsInboxIn: self session bpmEnvironment) removeEntry: aBpmInternalMessage ifAbsent: [].].
	self isUserInboxSelected ifTrue: [(self session user getUserNotificationsInboxIn: self session bpmEnvironment) removeEntry: aBpmInternalMessage ifAbsent: [].].

	selectedLateralItem := nil