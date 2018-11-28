other
columnsForUsers

	^OrderedCollection new  
			add: ((SewafReportColumn 
						selector: #username 
						title: ('Username' translateFor: self session user) 
						onClick: [:each | selectedObject := each])
						beSortable
						beSearchable;
						sortBlock: [:a :b | a username <= b username]);
			add: (SewafReportColumn 
						selector: #isAdmin 
						title: ('Admin?' translateFor: self session user));
						yourself;
			yourself