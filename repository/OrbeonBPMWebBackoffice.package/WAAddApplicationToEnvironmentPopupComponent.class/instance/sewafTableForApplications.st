other
sewafTableForApplications
	"Table with all Users that are NOT present in the role <selectedObject> "

	^(SewafBooleanSelectTable parent: self)
		summary: 'Add Application';
		backcolor: self session user userOptions getBooleanTableBackcolor;
		buttonLabel: ('Assign and Close' translateFor: self session user);
		booleanSelector: #booleanValueForApplication:;
		callbackSelector: #modifyApplication:value:;
		rows: self getAvailableApplications; 
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #applicationName title: 'Application');
						add: (SewafReportColumn selector: #printType title: 'Type');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself