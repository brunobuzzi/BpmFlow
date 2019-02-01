users
initializeSewafTableForUsers
	"Table with all Users that are NOT present in the role <selectedObject> "
	| table column|

	column := SewafReportColumn selector: #username title: ('Username' translateIn: self session).
	column beSortable; beSearchable; sortBlock: [:a :b | a username <= b username]. 
	table := (SewafBooleanSelectTable parent: self)
		summary: 'Users to Assign';
		backcolor: self session user userOptions getBooleanTableBackcolor;
		buttonLabel: ('Assign' translateIn: self session);
		booleanSelector: #isSelected:;
		callbackSelector: #selectUser:withValue:;
		columns: (OrderedCollection new add: column; 
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'Users'.