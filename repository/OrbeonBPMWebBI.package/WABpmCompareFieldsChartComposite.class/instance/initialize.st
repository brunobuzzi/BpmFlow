other
initialize

	super initialize.

	fieldsBatchedList := SewafBatchedList parentComponent: self.
	fieldsBatchedList batchSize: self session user regularListPagingSize;
		navigationCssClass: 'batch-div-bottom';
		isBottomBatch: true.

	selectedFieldsOnTable := Dictionary new.