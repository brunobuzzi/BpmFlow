other
initializeBatchedLists

	rolesBatchList := SewafBatchedList parentComponent: self.
	rolesBatchList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.

	usersWithSelectedRoleBatchList := SewafBatchedList parentComponent: self.
	usersWithSelectedRoleBatchList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.

	addUserToRoleBatchList := SewafBatchedList parentComponent: self.
	addUserToRoleBatchList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom-with-button'.

	rolesWithSelectedUserBatchList := SewafBatchedList parentComponent: self.
	rolesWithSelectedUserBatchList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.