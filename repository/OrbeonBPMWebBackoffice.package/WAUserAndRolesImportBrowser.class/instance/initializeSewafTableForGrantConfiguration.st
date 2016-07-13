other
initializeSewafTableForGrantConfiguration
	| table |

	table := (SewafTableReport summary: 'GrantConfigurartion')
		"rows: selectedUser roles; "
		backcolor: self session user userOptions getTableReportBackcolor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #applicationName title: 'Application');
						add: (SewafReportColumn selector: #applicationType title: 'Type');
						add: (SewafReportColumn selector: #username title: 'Username');
						add: (SewafReportColumn selector: #roleName title: 'Role');
						add: (SewafReportColumn selector: #roleType title: 'Role Type');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	self addSewafTable: table named: 'GrantConfigurartion'.
	^table