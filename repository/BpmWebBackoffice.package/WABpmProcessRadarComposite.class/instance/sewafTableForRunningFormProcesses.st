other
sewafTableForRunningFormProcesses

	^(SewafSelectTableReport parent: self)
		summary: 'Radar for Processes';
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #applicationName title: ('Application' translateIn: self session) onClick: [:each | selectedObject := each]);
						add: (SewafReportColumn selector: #processName title: ('Name' translateIn: self session));
						add: (SewafReportColumn selector: #version title: ('Version' translateIn: self session));
						add: (SewafReportColumn selector: #processId title: ('Process Id' translateIn: self session));
						add: (SewafReportColumn selector: #printRunningArtifacts title: ('Current Tasks' translateIn: self session));
						add: (SewafReportColumn selector: #hasFinalized title: ('Finished' translateIn: self session));
						add: (SewafReportColumn selector: #creatorName title: ('Creator' translateIn: self session));
						add: (SewafReportColumn selector: #createdTime title: ('Creation Time' translateIn: self session));
						add: (SewafReportColumn selector: #printCurrentRols title: ('Roles' translateIn: self session));
						add: (SewafReportColumn selector: #stateName title: ('State' translateIn: self session));
						yourself);
		rowColors: #(white white);
		selectedObject: selectedObject;
		rowPeriod: 1;
		yourself