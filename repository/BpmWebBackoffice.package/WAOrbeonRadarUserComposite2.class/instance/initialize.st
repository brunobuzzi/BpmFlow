other
initialize

	super initialize.

	listType := 'Current Tasks'.

	self setShowToElementNamed: 'search-area'.

	usersBatchedList := SewafBatchedList parentComponent: self.

	usersBatchedList batchSize: self session user regularListPagingSize;
		navigationCssClass: 'batch-div-bottom';
		isBottomBatch: true.