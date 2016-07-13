other
sewafImportReportTable: anOrderedCollection

	^(SewafTableReport summary: 'XPDL Import Report')
		rows: anOrderedCollection; "get collection elements"
		backcolor: self session user userOptions getTableReportBackcolor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #type title: 'Type');
						add: (SewafReportColumn selector: #title title: 'Title');
						add: (SewafReportColumn selector: #description title: 'Description');
						yourself);
		rowColors: #(white lightgray);
		rowPeriod: 1;
		yourself