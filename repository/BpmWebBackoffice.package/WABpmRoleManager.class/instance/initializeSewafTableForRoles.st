tables
initializeSewafTableForRoles
	| table |

	table := (SewafSelectTableReport parent: self)
		"rows: self searchRoles; "
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: self columnsforMainRole;
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'Roles'.