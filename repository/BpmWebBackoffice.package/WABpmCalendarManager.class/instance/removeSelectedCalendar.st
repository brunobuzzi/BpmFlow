other
removeSelectedCalendar

	selectedLateralItem removeFromCache.

	lateralCollection remove: selectedLateralItem ifAbsent: [].
	batchedList  remove: selectedLateralItem.

	mainPanel selectedLateralItem: nil.