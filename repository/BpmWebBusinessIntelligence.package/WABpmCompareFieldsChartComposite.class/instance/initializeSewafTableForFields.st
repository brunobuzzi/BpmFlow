other
initializeSewafTableForFields
	| table |

	table := (SewafBooleanSelectTable parent: self)
		buttonLabel: 'Remove Selected Fields';
		summary: 'Selected Fields';
		backcolor: self session user userOptions getBooleanTableBackcolor;
		booleanSelector: #fieldIsSelected:;
		callbackSelector: #setSelectedField:value:;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #appName title: ('Application Name' translateIn: self session));
						add: (SewafReportColumn selector: #procName title: ('Process Name' translateIn: self session));
						add: (SewafReportColumn selector: #fieldName title: ('Field Name' translateIn: self session));
						add: (SewafReportColumn selector: #startTimeStamp title: ('Start Time' translateIn: self session));
						add: (SewafReportColumn selector: #endTimeStamp title: ('End Time' translateIn: self session));
						add: (SewafReportColumn selector: #satisfyingBlock title: ('Query Block' translateIn: self session));
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'Fields'.