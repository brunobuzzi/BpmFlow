categories
renderCustomItemElementOn: html forItem: aBpmProcessDefinition

	(self session user getProcessDefinitionCategoriesFor: aBpmProcessDefinition) do: [:each | 
		html div class: 'category-circle'; style: 'background-color: ', each color;
			with: [html output: each name first].
	].