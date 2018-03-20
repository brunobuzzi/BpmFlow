other
getColumnsForTasksOn: html

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
	"		add: (SewafReportColumn renderBlock: [:each :innerHtml | 
						html anchor 
									class: 'cursor-pointer';
									with: each getDefinitionName;
									onClick: ((html jQuery id: (mainPanel componentValueAt: 'jQueryId')) load html: [:r | r render: (self class parent: self on: (model add: each; yourself))]). 
									]
						title: ('Task Name' translateFor: self session user));
			add: (SewafReportColumn renderBlock: [:each :innerHtml | 
						html anchor 
									class: 'cursor-pointer';
									with: each getDefinitionName;
									onClick: ((html jQuery ajax callback: [self onTaskClicked: each]) onComplete: ((html jQuery id: (mainPanel componentValueAt: 'jQueryId')) load html: [:h | h render: self])). 
									]
						title: ('Task Name' translateFor: self session user));"
	"		add: (SewafReportColumn 
						selector: #processId 
						title: ('Process Id' translateFor: self session user));"
			yourself