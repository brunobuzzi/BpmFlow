other
getColumnsForTasks

	^OrderedCollection new  
			add: ((SewafReportColumn 
						selector: #getDefinitionName 
						title: ('Task Name' translateFor: self session user)
						onClick: [:each | self onTaskClicked: each]) 
						beSearchable;
						sortBlock: [:a :b | a getDefinitionName <= b getDefinitionName]);
			add: (SewafReportColumn 
						selector: #state 
						title: ('Task State' translateFor: self session user));
			add: (SewafReportColumn 
						selector: #processId 
						title: ('Process Id' translateFor: self session user));
			yourself