other
removeDashboard

	(self componentValueAt: 'removeDashboard') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].
	 
	selectedLateralItem removeFromCache.

	lateralCollection remove: selectedLateralItem ifAbsent: [].
	batchedList  remove: selectedLateralItem.

	selectedLateralItem := nil.

	self removeValueNamed: 'removeDashboard'