other
initialize

	super initialize.

	self setShowToElementNamed: 'search-area'. "the search-are is shown by default"

	searchAvailable := false.

	instancesToRender := OrderedCollection new.

	batchedList := SewafLateralBatchedList parentComponent: self.
	batchedList batchSize: self session user lateralListPagingSize;
		navigationCssClass: 'batch-div-lateral-top'.