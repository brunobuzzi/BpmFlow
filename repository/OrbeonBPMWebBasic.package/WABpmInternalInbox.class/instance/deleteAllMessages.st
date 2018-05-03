other
deleteAllMessages

	(self componentValueAt: 'deleteAllMessages') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self session user getSystemNotificationsInbox removeAll.
	self session user getUserNotificationsInbox removeAll.

	selectedLateralItem := nil