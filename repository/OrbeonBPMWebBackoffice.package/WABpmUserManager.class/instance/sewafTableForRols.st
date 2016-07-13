tables
sewafTableForRols
	"Table with all Users that are NOT present in the role <selectedObject> "

	^(SewafBooleanSelectTable parent: self)
		summary: 'Users to Assign';
		backcolor: self session user userOptions getBooleanTableBackcolor;
		buttonLabel: ('Assign and Close' translateFor: self session user);
		booleanSelector: #booleanValueForRol:;
		callbackSelector: #modifyRole:value:;
		"rows: (self session user getVisibleRoles difference: selectedObject roles); "
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #name title: 'Role');
						add: (SewafReportColumn selector: #getApplicationName title: 'Application');
						add: (SewafReportColumn selector: #isAdmin title: 'Admin?');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself