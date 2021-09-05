other
initialize

	super initialize.

	mode := #normal.
	searchAvailable := false.
	categories := OrderedCollection new.
	"svgCanvas := self defaultBpmnCanvasClass parent: self."
	svgCanvas := self session systemRoot newBpmnWebCanvasParent: self.
	"subprocessesTree := WATree new."

	batchedList := SewafLateralBatchedList parentComponent: self.
	batchedList batchSize: self session user lateralListPagingSize;
		navigationCssClass: 'batch-div-lateral-top'.