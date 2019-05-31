other
initialize

	super initialize.

	searchCollectionResult := OrderedCollection new.

	assignmentBatchedList := SewafBatchedList parentComponent: self.
	assignmentBatchedList batchSize: self session user regularListPagingSize;
		navigationCssClass: 'batch-div-bottom';
		isBottomBatch: true.

	userAssignationBatchedList := SewafBatchedList parentComponent: self.
	userAssignationBatchedList batchSize: self session user regularListPagingSize;
		navigationCssClass: 'batch-div-bottom';
		isBottomBatch: true.