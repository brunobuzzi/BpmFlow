other
initializeSewafTableForInternationalizations
	| table |

	table := (SewafSelectTableReport parent: self)
		rows: self getEnvironmentList; 
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new  
						add: ((SewafReportColumn selector: #name title: 'Environment' onClick: [:each | self selectEnvironment: each]) beSortable; sortBlock: [:a :b | a name <= b name]; beSearchable; yourself);
						add: ((SewafReportColumn selector: #printInternationalizationType title: 'Internationalization') beSortable; sortBlock: [:a :b | a isAdmin printString <= b isAdmin printString]; beSearchable; yourself);
						add: self resetInternationalizationButton;
						add: self cloneDefaultButton;
						add: self cloneSelectedButton;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'internationalizations'.