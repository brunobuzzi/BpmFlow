tables
initializeSewafTableRolsOfUser
	| table |

	table := (SewafTableReport summary: 'Users')
		"rows: selectedUser roles; "
		backcolor: self session user userOptions getTableReportBackcolor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #name title: 'Rol');
						add: self newRemoveRolFromUserButton;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'RolesOfSelectedUser'.