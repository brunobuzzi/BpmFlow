free transitions
initializeSewafTableForTasks
	| table |

	table := (SewafBooleanSelectTable parent: self)
		summary: 'Free Processes';
		backcolor: self session user userOptions getBooleanTableBackcolor;
		"buttonTitle: ('Perform Action' translateIn: self session);"
		booleanSelector: #isAssignedToProcess:;
		callbackSelector: #assignUserTo:value:;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #processId title: ('Process Id' translateIn: self session));
						add: (SewafReportColumn selector: #processName title: ('Process Name' translateIn: self session));
						add: (SewafReportColumn selector: #printRunningArtifacts title: ('Current Tasks' translateIn: self session));
						add: (SewafReportColumn selector: #printCurrentRols title: ('Roles' translateIn: self session));
						add: (SewafReportColumn selector: #creatorName title: ('Creator' translateIn: self session));
						add: (SewafReportColumn selector: #assignedUserNames title: ('Assigned Users' translateIn: self session));
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'Tasks'.