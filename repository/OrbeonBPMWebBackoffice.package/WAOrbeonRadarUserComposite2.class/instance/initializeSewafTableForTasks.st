free transitions
initializeSewafTableForTasks
	| table |

	table := (SewafBooleanSelectTable parent: self)
		summary: 'Free Processes';
		backcolor: self session user userOptions getBooleanTableBackcolor;
		"buttonTitle: ('Perform Action' translateFor: self session user);"
		booleanSelector: #isAssignedToProcess:;
		callbackSelector: #assignUserTo:value:;
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
		yourself.

	^self addSewafTable: table named: 'Tasks'.