other
deleteAllMessages

	(self componentValueAt: 'deleteAllMessages') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self session user outbox removeAll.

	selectedLateralItem := nil