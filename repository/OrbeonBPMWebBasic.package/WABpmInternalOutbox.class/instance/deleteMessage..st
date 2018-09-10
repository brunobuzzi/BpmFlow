other
deleteMessage: aBpmInternalMessage

	(self componentValueAt: 'deleteMessage') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	(self session user getOutboxFor: self session bpmEnvironment) removeEntry: aBpmInternalMessage ifAbsent: [].

	selectedLateralItem := nil