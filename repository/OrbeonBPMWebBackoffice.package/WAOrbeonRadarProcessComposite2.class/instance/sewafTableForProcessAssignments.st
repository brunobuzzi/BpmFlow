other
sewafTableForProcessAssignments

	^(SewafSelectTableReport parent: self)
		summary: 'Process Assignments';
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #creationDate title: ('Creation Date' translateFor: self session user));
						add: (SewafReportColumn selector: #assignationDate title: ('Assigned Date' translateFor: self session user));
						add: (SewafReportColumn selector: #printUserName title: ('Responsible' translateFor: self session user));
						add: (SewafReportColumn selector: #taskEndDate title: ('End Date' translateFor: self session user));
						add: (SewafReportColumn selector: #getRoleName title: ('Role' translateFor: self session user));
						add: self createFilledFormsColumn;
						yourself);
		rowColors: #(white white);
		selectedObject: selectedObject;
		rowPeriod: 1;
		yourself