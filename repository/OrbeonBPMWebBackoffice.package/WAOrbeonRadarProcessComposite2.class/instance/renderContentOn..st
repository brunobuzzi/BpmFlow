other
renderContentOn: html

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow'; with: [self renderSearchOptionsOn: html].

	selectedObject ifNotNil: [self renderChangeProcessStateFormOn: html].

	batchedList items: searchCollectionResult.
	html div id: 'process-instances'; class: 'default-gray-table ';
		with:[html render: (batchedList table: self sewafTableForRunningFormProcesses).].

	searchCollectionResult isEmpty ifTrue: [^self].
	selectedObject ifNil: [^self].

	assignmentBatchedList items: selectedObject userAssignments.
	html div id: 'process-assignments'; class: 'default-gray-table ';
		with:[html render: (assignmentBatchedList table: self sewafTableForProcessAssignments)].