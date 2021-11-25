other
removeCalendar

	(self componentValueAt: 'removeCalendar') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].
	
	lateralCollection remove: selectedLateralItem ifAbsent: [].
	batchedList  remove: selectedLateralItem.

	selectedLateralItem := nil.

	self removeValueNamed: 'removeCalendar'