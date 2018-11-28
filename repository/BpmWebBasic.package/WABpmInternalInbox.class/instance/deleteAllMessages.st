other
deleteAllMessages

	(self componentValueAt: 'deleteAllMessages') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self isSystemInboxSelected ifTrue: [(self session user getSystemNotificationsInboxIn: self session bpmEnvironment) removeAll].
	self isUserInboxSelected ifTrue: [(self session user getUserNotificationsInboxIn: self session bpmEnvironment) removeAll].

	selectedLateralItem := nil