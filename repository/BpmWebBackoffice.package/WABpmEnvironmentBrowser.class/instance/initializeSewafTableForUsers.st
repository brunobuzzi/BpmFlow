other
initializeSewafTableForUsers
	| table |

	table := (SewafTableReport summary: 'Users')
		backcolor: self session user userOptions getTableReportBackcolor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #username title: '');
						add: self beBackofficeUserButton;
						add: self removeUserButton;
						yourself);
		rows: (selectedLateralItem users asSortedCollection: [:a :b | a username <= b username]); 
		rowColors: #(white white);
		rowPeriod: 1;
		yourself.

	^self addSewafTable: table named: 'Users'.