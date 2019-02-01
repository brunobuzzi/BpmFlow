tasks
getColumnsForTasksOn: html

	^OrderedCollection new  
			add: ((SewafReportColumn 
						selector: #getDefinitionName 
						title: ('Task Name' translateIn: self session)
						onClick: [:each | self onTaskClicked: each]) 
						beSearchable;
						sortBlock: [:a :b | a getDefinitionName <= b getDefinitionName]);
			add: (SewafReportColumn 
						selector: #state 
						title: ('Task State' translateIn: self session));
			yourself