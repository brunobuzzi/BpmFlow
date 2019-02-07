other
initialize

	super initialize.

	searchCollectionResult := OrderedCollection new.

	assignmentBatchedList := SewafBatchedList parentComponent: self.

	self setShowToElementNamed: 'search-area'.

	assignmentBatchedList batchSize: self session user regularListPagingSize;
		navigationCssClass: 'batch-div-bottom';
		isBottomBatch: true.