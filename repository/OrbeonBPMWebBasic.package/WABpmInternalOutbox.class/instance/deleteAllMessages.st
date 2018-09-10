other
deleteAllMessages

	(self componentValueAt: 'deleteAllMessages') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	(self session user getOutboxFor: self session bpmEnvironment) removeAll.

	selectedLateralItem := nil