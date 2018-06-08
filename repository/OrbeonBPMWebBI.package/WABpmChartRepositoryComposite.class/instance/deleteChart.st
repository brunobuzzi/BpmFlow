subclass responsibility
deleteChart

	(self componentValueAt: 'deleteChart') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	selectedLateralItem removeFromCache.

	self removeValueNamed: 'deleteChart'.

	searchResult remove: selectedLateralItem ifAbsent: [].
	
	selectedLateralItem := nil