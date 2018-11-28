other
renderContentOn: html
	| heightClass |

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html.].

	heightClass := mainPanel showMainMenu ifFalse: ['free-tasks-list-hide-top'] ifTrue: ['free-tasks-list-show-top'].

	html div id: 'free-tasks-list'; class: heightClass;
		with: [self renderUnassignedTasksOn: html.].