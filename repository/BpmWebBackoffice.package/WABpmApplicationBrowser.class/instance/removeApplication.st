other
removeApplication

	(self componentValueAt: 'removeApp') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self session bpmEnvironment unregisterApplication: selectedLateralItem.
	 
	lateralCollection remove: selectedLateralItem ifAbsent: [].
	batchedList remove: selectedLateralItem.

	selectedLateralItem := nil.

	self removeValueNamed: 'removeApp'