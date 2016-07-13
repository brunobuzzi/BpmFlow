other
initialize

	super initialize.

	searchCollectionResult := OrderedCollection new.

	batchedList := SewafBatchedList parentComponent: self.

	batchedList batchSize: self session user regularListPagingSize;
		navigationCssClass: 'batch-div-bottom';
		isBottomBatch: true.