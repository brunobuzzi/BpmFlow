other
initialize

	super initialize.

	searchAvailable := false.
	mode := #normal.
	categories := OrderedCollection new.

	batchedList := SewafLateralBatchedList parentComponent: self.
	batchedList batchSize: self session user lateralListPagingSize;
		navigationCssClass: 'batch-div-lateral-top'.