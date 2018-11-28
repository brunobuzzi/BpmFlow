other
initialize

	super initialize.

	assignationTable := Dictionary new.

	tasksBatchedList := SewafBatchedList parentComponent: self.
	tasksBatchedList batchSize: self session user regularListPagingSize;
		navigationCssClass: 'batch-div-bottom';
		isBottomBatch: true.

	usersBatchedList := SewafBatchedList parentComponent: self.
	usersBatchedList batchSize: self session user regularListPagingSize;
		navigationCssClass: 'batch-div-bottom';
		isBottomBatch: true.