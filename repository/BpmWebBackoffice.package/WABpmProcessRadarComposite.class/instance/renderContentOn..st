other
renderContentOn: html
	| jsEcElement |

	(self componentValueAt: 'alert') ifNotNil: [:alertString | 
		html document addLoadScript: (html javascript alert: alertString).
		self removeValueNamed: 'alert'].

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow'; 
		with: [self renderSearchOptionsOn: html.
				jsEcElement := self createEcSearchAreaJsObject.
				jsEcElement callInitIconFunction; callInitElementFunction;callInitElementSiblingFunction.
				html script: jsEcElement.].

	self renderChangeProcessStateFormOn: html.

	batchedList items: searchCollectionResult.
	html div id: 'process-instances'; class: 'default-gray-table ';
		with:[html div class: 'default-gray-table-title'; with: [html output with: ('Running Processes' translateIn: self session)].
				html render: (batchedList table: self sewafTableForRunningFormProcesses).].

	searchCollectionResult isEmpty ifTrue: [^self].
	selectedObject ifNil: [^self].

	assignmentBatchedList items: (selectedObject userAssignmentsSortedBy: [:a :b | a creationDate <= b creationDate]).
	html div id: 'process-assignments'; class: 'default-gray-table ';
		with:[html div class: 'default-gray-table-title'; with: [html output class: 'default-gray-table-title'; with: ('Tasks List' translateIn: self session)].
				html render: (assignmentBatchedList table: self sewafTableForProcessAssignments)].

	(self componentValueAt: 'userAssgination') ifNotNil: [:assination | 
		userAssignationBatchedList items: assination availableGrantedUsers.
		html div class: 'default-gray-table ';
			with:[html div class: 'default-gray-table-title'; with: [html output class: 'default-gray-table-title'; with: ('Select a User to Assign' translateIn: self session)].
					html render: (userAssignationBatchedList table: self sewafTableForUsers)].].

	(self componentValueAt: 'view.process.details' ifAbsent: [false]) ifTrue: [self renderSvgProcessMapOn: html].