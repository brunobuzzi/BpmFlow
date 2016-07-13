other
initialize

	super initialize.

	mode := #normal.
	searchAvailable := false.
	categories := OrderedCollection new.
	"subprocessesTree := WATree new."

	self setShowToElementNamed: 'search-area'.

	batchedList := SewafLateralBatchedList parentComponent: self.
	batchedList batchSize: self session user lateralListPagingSize;
		navigationCssClass: 'batch-div-lateral-top'.