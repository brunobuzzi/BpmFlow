assign unassign
sewafTableForUsers

	^(SewafSelectTableReport parent: self)
		summary: 'Users to Assign';
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: self columnsForUsers;
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.