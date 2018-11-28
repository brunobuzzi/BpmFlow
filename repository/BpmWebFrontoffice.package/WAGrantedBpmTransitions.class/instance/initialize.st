other
initialize

	super initialize.

	batchedList := SewafBatchedList parentComponent: self items: (self session user getGrantedTasksIn: self session bpmEnvironment).

	batchedList batchSize: self session user regularListPagingSize;
		isBottomBatch: true;
		navigationCssClass: 'batch-div-bottom'.