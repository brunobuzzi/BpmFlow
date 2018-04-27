other
deleteMessage: aBpmInternalMessage

	(self componentValueAt: 'deleteMessage') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self session user outbox removeEntry: aBpmInternalMessage ifAbsent: [].

	selectedLateralItem := nil