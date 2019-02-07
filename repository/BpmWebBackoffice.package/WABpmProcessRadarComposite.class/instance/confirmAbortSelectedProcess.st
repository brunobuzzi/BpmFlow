process state
confirmAbortSelectedProcess

	(self componentValueAt: 'confirmAbortSelectedProcess') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	selectedObject confirmAbortion.

	searchCollectionResult remove: selectedObject.

	selectedObject := nil