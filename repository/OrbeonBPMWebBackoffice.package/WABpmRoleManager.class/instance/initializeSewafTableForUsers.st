tables
initializeSewafTableForUsers
	"Table with all Users that are NOT present in the role <selectedObject> "
	| table column|

	column := SewafReportColumn selector: #username title: 'Username'.
	column beSortable; beSearchable; sortBlock: [:a :b | a username <= b username]. 
	table := (SewafBooleanSelectTable parent: self)
		summary: 'Users to Assign';
		sortColumnSelector: #sortUsers:orderMode:;
		backcolor: self session user userOptions getBooleanTableBackcolor;
		buttonLabel: ('Assign and Close' translateFor: self session user);
		booleanSelector: #booleanValueForUser:;
		callbackSelector: #modifyUser:value:;
		columns: (OrderedCollection new add: column; 
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'Users'.