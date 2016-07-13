other
initializeSewafTableForUsers
	"Table with all Users that are NOT present in the role <selectedObject> "
	| table |

	table := (SewafSelectTableReport parent: self)
		summary: 'Users to Assign';
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: self columnsForUsers;
		rowColors: #(white white);
		selectedObject: selectedObject;
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'Users'.