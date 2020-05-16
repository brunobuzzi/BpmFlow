tables
columnsForUsersGroups

	^OrderedCollection new  
			add: ((SewafReportColumn selector: #name title: 'User Group' onClick: [:each | selectedObject := each]) beSortable beSearchable; sortBlock: [:a :b | a name <= b name]; yourself);
			add: (SewafReportColumn selector: #description title: 'Description');
			add: self removeUserGroupIcon;
			"add: self listProcessesDefinitions;
			add: self newRemoveRolButton;" 
			yourself