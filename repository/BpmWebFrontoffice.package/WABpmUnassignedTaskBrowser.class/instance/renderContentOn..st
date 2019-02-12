other
renderContentOn: html
	| heightClass |

	(self componentValueAt: 'alert') ifNotNil: [:alertString | 
		html document addLoadScript: (html javascript alert: alertString).
		self removeValueNamed: 'alert'.
		self searchAll].
 
	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html.].

	heightClass := mainPanel showMainMenu ifFalse: ['free-tasks-list-hide-top'] ifTrue: ['free-tasks-list-show-top'].

	html div id: 'free-tasks-list'; class: heightClass;
		with: [self renderUnassignedTasksOn: html.].