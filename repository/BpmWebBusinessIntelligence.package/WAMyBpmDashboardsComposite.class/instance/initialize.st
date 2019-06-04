other
initialize

	super initialize.

	searchAvailable := false.
	isJsEnhacementsEnabled := false.

	instancesToRender := Dictionary new.

	batchedList := SewafLateralBatchedList parentComponent: self.
	batchedList batchSize: self session user lateralListPagingSize;
		navigationCssClass: 'batch-div-lateral-top'.