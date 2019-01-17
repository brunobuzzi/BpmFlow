other
initialize

	super initialize.

	searchAvailable := false.
	calendarComposite := WABpmCalendarComposite parent: self.

	self setShowToElementNamed: 'search-area'.

	batchedList := SewafLateralBatchedList parentComponent: self.
	batchedList batchSize: self session user lateralListPagingSize;
		navigationCssClass: 'batch-div-lateral-top'.

	self addValue: false named: 'hoursPane'.