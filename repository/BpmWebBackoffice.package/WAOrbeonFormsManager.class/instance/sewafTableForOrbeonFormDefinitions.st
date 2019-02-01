other
sewafTableForOrbeonFormDefinitions

	^(SewafTableReport summary: 'Orbeon Form Definitions')
		rows: selectedDefinitions; "get collection elements"
		backcolor: self session user userOptions getTableReportBackcolor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #applicationName title: 'Application');
						add: self formDefinitionColumn;
						add: (SewafReportColumn selector: #version title: 'Version');
						add: (SewafReportColumn selector: #createdTime title: 'Created');
						add: (SewafReportColumn selector: #modifiedTime title: 'Modified');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself