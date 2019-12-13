other
renderContentOn: html

	currentOffendingWorkflow notNil ifTrue: [^self renderSVGDiagramOn: html].

	html div class: 'margin-top-10px margin-left-10px'; with: [
		html anchor callback: [currentOffendingWorkflow := nil. self answer: true.];
			with: [html image  url: (SEWAFIconLibrary / #arrowback432Png); altText: 'Back to Import Processes'; title: 'Back to Import Processes'].

		importProcess offendingWorkflows do: [:each | 
			html anchor callback: [currentOffendingWorkflow := each];
				with: [html image  url: (SEWAFIconLibrary / #documentflowchart32Png); altText: 'View BPMN Diagram'; title: 'View BPMN Diagram'].
		].
	].

	html div id: 'imported-xpdl-report'; class: 'default-gray-table'; with: [
		html render: self reportTable.
	].