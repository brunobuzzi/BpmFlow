other
initialize

	super initialize.

	searchAvailable := false.
	mode := #normal.
	categories := OrderedCollection new.
	transitionsHeight := Dictionary new.

	self setShowToElementNamed: 'search-area'. "the search-are is shown by default"

	batchedList := SewafLateralBatchedList parentComponent: self.
	batchedList batchSize: self session user lateralListPagingSize;
		navigationCssClass: 'batch-div-lateral-top'.