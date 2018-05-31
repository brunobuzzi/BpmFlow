render
renderContentOn: html

	self setChartDefinition.

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	self showChartExecuted ifFalse: [^self].
	self resetShowChartExecuted.

	self setPropertiesTo: chartDefinition distribution.

	chartDefinition renderOn: html.

"	canvas notNil ifTrue: [self renderGraphOn: html]"