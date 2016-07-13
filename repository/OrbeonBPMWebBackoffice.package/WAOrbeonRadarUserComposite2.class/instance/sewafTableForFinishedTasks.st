free transitions
sewafTableForFinishedTasks

	^(SewafTableReport parent: self)
		summary: 'Free Processes';
		backcolor: self session user userOptions getTableReportBackcolor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #processId title: ('Process Id' translateFor: self session user));
						add: (SewafReportColumn selector: #processName title: ('Process Name' translateFor: self session user));
						add: (SewafReportColumn selector: #printRunningArtifacts title: ('Current Tasks' translateFor: self session user));
						add: (SewafReportColumn selector: #printCurrentRols title: ('Roles' translateFor: self session user));
						add: (SewafReportColumn selector: #creatorName title: ('Creator' translateFor: self session user));
						add: (SewafReportColumn selector: #assignedUserNames title: ('Assigned Users' translateFor: self session user));
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself