other
initializeTables
	| table |

	table := (SewafTableReport summary: 'Users')
		"rows: selectedObject roles; "
		backcolor: self session user userOptions getTableReportBackcolor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #username title: 'User');
						add: (SewafReportColumn selector: #isBackofficeUser title: 'Backoffice');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'Users'.