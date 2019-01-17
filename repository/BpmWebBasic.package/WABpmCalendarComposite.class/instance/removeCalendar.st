other
removeCalendar

	(self componentValueAt: 'removeCalendar') "the jqdialog set this value"
	ifNil: [^self]
	ifNotNil: [:aBoolean | aBoolean ifFalse: [^self]].
	
	mainPanel removeSelectedCalendar.

	self removeValueNamed: 'removeCalendar'