other
initialize

	super initialize.

	andApplications := OrderedCollection new.
	orApplications := OrderedCollection new.

	batchedList := SewafLateralBatchedList parentComponent: self.
	batchedList batchSize: self session user lateralListPagingSize;
		navigationCssClass: 'batch-div-lateral-top'.

	self setShowToElementNamed: 'search-area'. "the search-are is shown by default"