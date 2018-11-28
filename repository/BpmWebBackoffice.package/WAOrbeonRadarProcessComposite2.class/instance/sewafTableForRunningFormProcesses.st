other
sewafTableForRunningFormProcesses

	^(SewafSelectTableReport parent: self)
		summary: 'Radar for Processes';
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #applicationName title: ('Application' translateFor: self session user) onClick: [:each | selectedObject := each]);
						add: (SewafReportColumn selector: #processName title: ('Name' translateFor: self session user));
						add: (SewafReportColumn selector: #version title: ('Version' translateFor: self session user));
						add: (SewafReportColumn selector: #processId title: ('Process Id' translateFor: self session user));
						add: (SewafReportColumn selector: #printRunningArtifacts title: ('Current Tasks' translateFor: self session user));
						add: (SewafReportColumn selector: #hasFinalized title: ('Finished' translateFor: self session user));
						add: (SewafReportColumn selector: #creatorName title: ('Creator' translateFor: self session user));
						add: (SewafReportColumn selector: #createdTime title: ('Creation Time' translateFor: self session user));
						add: (SewafReportColumn selector: #printCurrentRols title: ('Roles' translateFor: self session user));
						add: (SewafReportColumn selector: #stateName title: ('State' translateFor: self session user));
						yourself);
		rowColors: #(white white);
		selectedObject: selectedObject;
		rowPeriod: 1;
		yourself