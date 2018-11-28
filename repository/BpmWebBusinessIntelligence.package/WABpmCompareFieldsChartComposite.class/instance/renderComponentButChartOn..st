other
renderComponentButChartOn: html

	fieldsBatchedList items: chartDefinition selectedFieldsToRender.

	html div with: [
		html div class: 'left default-gray-table float-left '; with: [
			html render: (fieldsBatchedList table: self sewafTableForFields)].
	].