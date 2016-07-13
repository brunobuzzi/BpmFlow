tables
initializeSewafTableRolsOfUser
	| table |

	table := (SewafTableReport summary: 'Users')
		"rows: selectedObject roles; "
		backcolor: self session user userOptions getTableReportBackcolor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #name title: 'Role');
						add: (SewafReportColumn selector: #isAdmin title: 'Admin');
						add: (SewafReportColumn selector: #isBackofficeRole title: 'Backoffice');
						add: (SewafReportColumn selector: #getApplicationName title: 'Application');
						add: self newRemoveRolFromUserButton;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'RolsOfSelectedUser'.