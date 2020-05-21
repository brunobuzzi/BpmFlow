other
deleteChart

	(self componentValueAt: 'deleteChart') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].

	self removeValueNamed: 'deleteChart'.

	self session bpmEnvironment removeChart: selectedLateralItem.

	self getCurrentCollection remove: selectedLateralItem.
	
	selectedLateralItem := nil