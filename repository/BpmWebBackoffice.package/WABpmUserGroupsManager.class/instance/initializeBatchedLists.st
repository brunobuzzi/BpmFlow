other
initializeBatchedLists

	usersGroupsBatchedList := SewafBatchedList parentComponent: self.
	usersGroupsBatchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.

	usersBatchedList := SewafBatchedList parentComponent: self.
	usersBatchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.

	rolesBatchedList := SewafBatchedList parentComponent: self.
	rolesBatchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom-with-button'.

	addUsersBatchedList := SewafBatchedList parentComponent: self.
	addUsersBatchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom-with-button'.

	addRolesBatchedList := SewafBatchedList parentComponent: self.
	addRolesBatchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom-with-button'.