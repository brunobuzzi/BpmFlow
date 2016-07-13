other
renderContentOn: html

	html div id: 'imported-xpdl-report'; class: 'unique-centered-table unique-centered-table-width70'; with: [
		html render: self reportTable.
	].

	html anchor callback: [self answer: true.];
		with: [html image  url: (SEWAFIconLibrary / #arrowback432Png); altText: 'Back to Import Processes'; title: 'Back to Import Processes'].