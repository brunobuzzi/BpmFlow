other
removeApplication

	(self componentValueAt: 'removeApp') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	selectedLateralItem removeFromCache.

	lateralCollection remove: selectedLateralItem ifAbsent: [].
	batchedList  remove: selectedLateralItem.

	selectedLateralItem := nil.

	self removeValueNamed: 'removeApp'