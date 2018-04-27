other
deleteMessage: aBpmInternalMessage

	(self componentValueAt: 'deleteMessage') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self session user getSystemNotificationsInbox removeEntry: aBpmInternalMessage ifAbsent: [].
	self session user getUserNotificationsInbox removeEntry: aBpmInternalMessage ifAbsent: [].

	selectedLateralItem := nil