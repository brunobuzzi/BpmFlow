upload
renderHelpOn: html

	html div class: 'import-csv-info';
		with: [html output: 'All names are case sensitive.'. html break.
				html output: 'The CSV format is: '. html break.
				html output: 'Application Name; Application Type; Role; Role Type;Username.'. html break.
				html output: 'For more import information go to the manual (click help "O" on top right). '. html break.].

	html break.