other
initializeUserBatchedList

	usersBatchedList := SewafBatchedList parentComponent: self.
	usersBatchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.