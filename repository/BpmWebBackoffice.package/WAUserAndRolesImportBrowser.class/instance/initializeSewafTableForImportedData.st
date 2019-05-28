other
initializeSewafTableForImportedData
	| table |

	table := (SewafTableReport summary: 'ImportedData')
		"rows: selectedUser roles; "
		backcolor: self session user userOptions getTableReportBackcolor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #printSummary title: 'Data');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	self addSewafTable: table named: 'ImportedData'.
	^table