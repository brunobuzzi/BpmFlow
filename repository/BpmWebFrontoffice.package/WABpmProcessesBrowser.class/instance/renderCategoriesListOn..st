categories
renderCategoriesListOn: html

	categories do: [:each | 
		html anchor callback: [self onProcessCategoryClicked: each]; 
			class: 'category-label';
			style: 'background-color:', each color;
			with: [html output: each name]].