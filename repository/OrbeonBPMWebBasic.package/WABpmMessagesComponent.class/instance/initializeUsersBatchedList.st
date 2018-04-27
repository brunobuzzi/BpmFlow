other
initializeUsersBatchedList

	userBatchedList := SewafBatchedList parentComponent: self.
	userBatchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.