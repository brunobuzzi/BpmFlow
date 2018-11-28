tables
initializeSewafTableForUsersWithRol
	"Table with all Users that are NOT present in the role <selectedObject> "

	| table |

	table := (SewafSelectTableReport summary: 'Users')
		"rows: selectedObject users asArray; "
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #username title: 'Username' onClick: [:each | selectedUser := each]);
						add: self newRemoveUserFromRolButton;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'UsersOfSelectedRole'.