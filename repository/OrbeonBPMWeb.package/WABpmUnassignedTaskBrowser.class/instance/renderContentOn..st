other
renderContentOn: html

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html.].

	html div id: 'free-tasks-list'; with: [self renderUnassignedTasksOn: html.].