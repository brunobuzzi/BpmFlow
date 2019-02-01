other
sewafTableForUsers
	"Table with all Users that are NOT present in the role <selectedObject> "
	| table column|

	column := SewafReportColumn selector: #username title: ('Username' translateIn: self session).
	column sortBlock: [:a :b | a username <= b username]. 
	table := (SewafBooleanSelectTable parent: self)
		summary: 'Users to Assign';
		backcolor: self session user userOptions getBooleanTableBackcolor;
		buttonLabel: ('Assign' translateIn: self session);
		booleanSelector: #booleanValueForUser:;
		callbackSelector: #modifyUser:value:;
		rows: self getAvailableUsers; 
		columns: (OrderedCollection new add: column; 
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^table