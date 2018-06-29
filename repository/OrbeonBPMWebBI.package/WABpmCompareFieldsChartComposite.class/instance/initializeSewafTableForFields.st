other
initializeSewafTableForFields
	| table |

	table := (SewafBooleanSelectTable parent: self)
		summary: 'Selected Fields';
		backcolor: self session user userOptions getBooleanTableBackcolor;
		booleanSelector: #fieldIsSelected:;
		callbackSelector: #setSelectedField:value:;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #appName title: ('Application Name' translateFor: self session user));
						add: (SewafReportColumn selector: #procName title: ('Process Name' translateFor: self session user));
						add: (SewafReportColumn selector: #fieldName title: ('Field Name' translateFor: self session user));
						add: (SewafReportColumn selector: #startTimeStamp title: ('Start Time' translateFor: self session user));
						add: (SewafReportColumn selector: #endTimeStamp title: ('End Time' translateFor: self session user));
						add: (SewafReportColumn selector: #satisfyingBlock title: ('Query Block' translateFor: self session user));
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'Fields'.