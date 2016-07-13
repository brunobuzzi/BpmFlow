other
renderContentOn: html

	html div with: [

		self renderCategoryFormOn: html.

		html div class: 'default-gray-table float-left';
			with:[html render: (batchedList table: self sewafTableForUserCategories).].
	].