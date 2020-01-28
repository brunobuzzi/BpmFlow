tables
initializeSewafTableForUsers
	"Table with all Users that are NOT present in the role <selectedObject> "
	| table |

	table := (SewafSelectTableReport parent: self)
		summary: 'Users to Assign';
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		"rows: self session user getVisibleUsers; "
		columns: (OrderedCollection new  
						add: ((SewafReportColumn selector: #username title: 'Username' onClick: [:each | self selectedObject: each]) beSortable; sortBlock: [:a :b | a username <= b username]; beSearchable; yourself);
						add: (SewafReportColumn renderBlock: [:each :html | html text: (each isAdminIn: self session bpmEnvironment)] title: 'Is Admin');
						add: self resetPasswordColumn;
						add: self resetPasswordButton;
						add: self removeUserButton;
						yourself);
		rowColors: #(white white);
		selectedObject: selectedObject;
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'Users'.