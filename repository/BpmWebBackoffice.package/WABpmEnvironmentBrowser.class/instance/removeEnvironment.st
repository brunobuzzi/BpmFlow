popups
removeEnvironment

	(self componentValueAt: 'removeEnv') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self session systemRoot unregisterEnvironment: selectedLateralItem.

	lateralCollection remove: selectedLateralItem ifAbsent: [].
	batchedList  remove: selectedLateralItem.

	selectedLateralItem := nil.

	self removeValueNamed: 'removeEnv'