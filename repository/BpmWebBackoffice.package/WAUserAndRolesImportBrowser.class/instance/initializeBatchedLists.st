other
initializeBatchedLists

	importedDataBatchList := SewafBatchedList parentComponent: self.
	importedDataBatchList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.

	importedConfigurationBatchList := SewafBatchedList parentComponent: self.
	importedConfigurationBatchList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.