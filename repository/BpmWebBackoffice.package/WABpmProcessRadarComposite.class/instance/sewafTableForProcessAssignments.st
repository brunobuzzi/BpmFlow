other
sewafTableForProcessAssignments

	^(SewafSelectTableReport parent: self)
		summary: 'Process Assignments';
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #creationDate title: ('Creation Date' translateIn: self session));
						add: (SewafReportColumn selector: #assignationDate title: ('Assigned Date' translateIn: self session));
						add: (SewafReportColumn selector: #printUserName title: ('Responsible' translateIn: self session));
						add: (SewafReportColumn selector: #taskEndDate title: ('End Date' translateIn: self session));
						add: (SewafReportColumn selector: #getRoleName title: ('Role' translateIn: self session));
						add: self createFilledFormsColumn;
						add: self createAssignUserColumn;
						add: self createRemoveAssignmentFromUserColumn;
						yourself);
		rowColors: #(white white);
		selectedObject: selectedObject;
		rowPeriod: 1;
		yourself