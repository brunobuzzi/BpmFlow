other
columnsForUsersGroups

	^OrderedCollection new  
			add: ((SewafReportColumn selector: #name title: 'User Group' onClick: [:each | selectedObject := each]) beSortable beSearchable; sortBlock: [:a :b | a name <= b name]; yourself);
			add: ((SewafReportColumn selector: #getApplicationName title: 'Application') beSortable beSearchable; sortBlock: [:a :b | a getApplicationName <= b getApplicationName]; yourself);
			"add: self addCurrentUserButton;
			add: self listProcessesDefinitions;
			add: self newRemoveRolButton;" 
			yourself