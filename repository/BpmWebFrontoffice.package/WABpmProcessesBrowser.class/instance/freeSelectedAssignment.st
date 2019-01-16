process
freeSelectedAssignment

	(self componentValueAt: 'releaseAssignment') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	selectedLateralItem isTaken 
	ifTrue: [self session user untake: selectedLateralItem.].

	lateralCollection remove: selectedLateralItem ifAbsent: [].
	searchResult remove: selectedLateralItem ifAbsent: [].

	selectedLateralItem := nil.

	self getCurrentCollection.