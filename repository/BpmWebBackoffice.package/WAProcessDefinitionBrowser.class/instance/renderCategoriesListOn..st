categories
renderCategoriesListOn: html

	html div id: 'process-category-list'; with: [
		categories do: [:each | 
			html anchor callback: [self onProcessCategoryClicked: each]; 
				class: 'category-label';
				style: 'background-color:', each color;
				with: [html output: each name]].
	].