other
removeDashboard

	(self componentValueAt: 'removeDashboard') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].
	 
	self session bpmEnvironment removeDashboard: selectedLateralItem.

	lateralCollection remove: selectedLateralItem ifAbsent: [].
	batchedList remove: selectedLateralItem.

	selectedLateralItem := nil.

	self removeValueNamed: 'removeDashboard'