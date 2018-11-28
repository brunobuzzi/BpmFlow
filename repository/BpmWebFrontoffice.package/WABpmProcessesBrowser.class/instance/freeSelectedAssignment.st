process
freeSelectedAssignment

	selectedLateralItem isTaken 
	ifTrue: [self session user untake: selectedLateralItem.].

	lateralCollection remove: selectedLateralItem ifAbsent: [].
	searchResult remove: selectedLateralItem ifAbsent: [].

	selectedLateralItem := nil.

	self getCurrentCollection.