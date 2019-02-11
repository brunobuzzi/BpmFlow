other
sewafTableForUsers

	^(SewafSelectTableReport parent: self)
		summary: 'Users to Assign';
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: self columnsForUsers;
		rowColors: #(white white);
		selectedObject: selectedObject;
		rowPeriod: 1;
		yourself.