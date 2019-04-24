other
freeSelectedAssignment

	(self componentValueAt: 'releaseAssignment') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	model isTaken 
	ifTrue: [self session user untake: model.].

	mainPanel lateralCollection remove: model ifAbsent: [].
	mainPanel searchResult remove: model ifAbsent: [].

	mainPanel selectedLateralItem:  nil.

	mainPanel getCurrentCollection.