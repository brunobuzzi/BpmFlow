other
removeSelectedCalendar

	self session bpmEnvironment removeCalendar: selectedLateralItem.

	lateralCollection remove: selectedLateralItem ifAbsent: [].
	batchedList  remove: selectedLateralItem.

	mainPanel selectedLateralItem: nil.