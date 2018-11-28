other
initializeBatchedLists

	exportedDataBatchList := SewafBatchedList parentComponent: self.
	exportedDataBatchList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.