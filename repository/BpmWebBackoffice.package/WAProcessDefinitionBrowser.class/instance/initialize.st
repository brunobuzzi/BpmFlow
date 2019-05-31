other
initialize

	super initialize.

	mode := #normal.
	searchAvailable := false.
	categories := OrderedCollection new.
	svgCanvas := WABpmnCanvasComposite parent: self.
	"subprocessesTree := WATree new."

	batchedList := SewafLateralBatchedList parentComponent: self.
	batchedList batchSize: self session user lateralListPagingSize;
		navigationCssClass: 'batch-div-lateral-top'.