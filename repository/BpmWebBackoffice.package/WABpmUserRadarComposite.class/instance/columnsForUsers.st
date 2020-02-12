other
columnsForUsers

	^OrderedCollection new  
			add: ((SewafReportColumn 
						selector: #username 
						title: ('Username' translateIn: self session) 
						onClick: [:each | selectedObject := each])
						beSortable
						beSearchable;
						sortBlock: [:a :b | a username <= b username]);
			add: (SewafReportColumn renderBlock: [:each :html |  html text: (each isAdminIn: self session bpmEnvironment)] title: ('Admin?' translateIn: self session));
			yourself