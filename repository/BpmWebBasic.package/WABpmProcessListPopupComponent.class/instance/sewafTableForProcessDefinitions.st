other
sewafTableForProcessDefinitions

	^(SewafTableReport parent: self)
		summary: 'Add Application';
		backcolor: self session user userOptions getBooleanTableBackcolor;
		rows: self getAvailableProcessesDefinitions; 
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #processName title: 'Process Definition');
						add: (SewafReportColumn selector: #version title: 'Version');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself