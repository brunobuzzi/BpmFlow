other
sewafTableForFormTransitionsDefinitions

	^(SewafSelectTableReport summary: 'Artifacts')
		"rows: self session user getGrantedTasks; "
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #applicationName title: 'Application');
						add: (SewafReportColumn selector: #processDefinitionName title: 'Process');
						"add: (SewafReportColumn selector: #startFormName title: 'Required Form');"
						add: (SewafReportColumn selector: #name title: 'Form to Fill');
						add: (SewafReportColumn selector: #printRoleNames title: 'Roles');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself