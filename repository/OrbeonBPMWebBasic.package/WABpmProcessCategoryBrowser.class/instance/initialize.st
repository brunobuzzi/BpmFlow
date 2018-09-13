other
initialize

	super initialize.

	model := self defaultCategoryClass new.
	batchedList := SewafBatchedList parentComponent: self items: self getAllUserCategories.

	batchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.