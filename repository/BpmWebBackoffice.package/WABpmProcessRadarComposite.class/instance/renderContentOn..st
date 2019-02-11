other
renderContentOn: html

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow'; with: [self renderSearchOptionsOn: html].

	self renderChangeProcessStateFormOn: html.

	batchedList items: searchCollectionResult.
	html div id: 'process-instances'; class: 'default-gray-table ';
		with:[html div class: 'default-gray-table-title'; with: [html output with: ('Running Processes' translateIn: self session)].
				html render: (batchedList table: self sewafTableForRunningFormProcesses).].

	searchCollectionResult isEmpty ifTrue: [^self].
	selectedObject ifNil: [^self].

	assignmentBatchedList items: selectedObject userAssignments.
	html div id: 'process-assignments'; class: 'default-gray-table ';
		with:[html div class: 'default-gray-table-title'; with: [html output class: 'default-gray-table-title'; with: ('Tasks List' translateIn: self session)].
				html render: (assignmentBatchedList table: self sewafTableForProcessAssignments)].

	(self componentValueAt: 'userAssgination') ifNotNil: [:assination | 
		userAssignationBatchedList items: assination possibleUsers.
		html div class: 'default-gray-table ';
			with:[html div class: 'default-gray-table-title'; with: [html output class: 'default-gray-table-title'; with: ('Select a User to Assign' translateIn: self session)].
					html render: (userAssignationBatchedList table: self sewafTableForUsers)].].

	(self componentValueAt: 'view.svg.map' ifAbsent: [false]) ifTrue: [self renderSvgProcessMapOn: html].