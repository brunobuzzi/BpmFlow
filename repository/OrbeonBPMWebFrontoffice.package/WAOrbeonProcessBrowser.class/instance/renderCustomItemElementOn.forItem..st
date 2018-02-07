categories
renderCustomItemElementOn: html forItem: aBpmTaskAssignment

	(self session user getProcessInstanceCategoriesFor: aBpmTaskAssignment) do: [:each | 
		html div class: 'category-circle'; style: 'background-color: ', each color;
			with: [html output: each name first].
	].