other
deleteAllMessages

	(self componentValueAt: 'deleteAllMessages') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self isSystemInboxSelected ifTrue: [self session user getSystemNotificationsInbox removeAll].
	self isUserInboxSelected ifTrue: [self session user getUserNotificationsInbox removeAll].

	selectedLateralItem := nil