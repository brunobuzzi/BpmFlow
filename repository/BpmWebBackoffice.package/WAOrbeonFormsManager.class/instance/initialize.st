other
initialize

	super initialize.

	selectedApplications := #().
	selectedDefinitions := #().

	batchedList := SewafBatchedList parentComponent: self.

	batchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.