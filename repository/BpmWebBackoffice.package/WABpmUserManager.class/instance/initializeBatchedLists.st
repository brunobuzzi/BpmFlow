other
initializeBatchedLists

	usersBatchedList := SewafBatchedList parentComponent: self.
	usersBatchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.

	userRolesBatchedList := SewafBatchedList parentComponent: self.
	userRolesBatchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.

	addRoleBatchedList := SewafBatchedList parentComponent: self.
	addRoleBatchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom-with-button'.