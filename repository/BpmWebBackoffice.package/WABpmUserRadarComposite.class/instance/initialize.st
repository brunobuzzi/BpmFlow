other
initialize

	super initialize.

	listType := 'Current Tasks'.

	usersBatchedList := SewafBatchedList parentComponent: self.

	usersBatchedList batchSize: self session user regularListPagingSize;
		navigationCssClass: 'batch-div-bottom';
		isBottomBatch: true.