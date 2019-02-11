other
initialize

	super initialize.

	searchCollectionResult := OrderedCollection new.

	self setShowToElementNamed: 'search-area'.

	assignmentBatchedList := SewafBatchedList parentComponent: self.
	assignmentBatchedList batchSize: self session user regularListPagingSize;
		navigationCssClass: 'batch-div-bottom';
		isBottomBatch: true.

	userAssignationBatchedList := SewafBatchedList parentComponent: self.
	userAssignationBatchedList batchSize: self session user regularListPagingSize;
		navigationCssClass: 'batch-div-bottom';
		isBottomBatch: true.