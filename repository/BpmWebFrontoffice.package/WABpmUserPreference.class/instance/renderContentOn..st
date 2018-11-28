other
renderContentOn: html

	html div id: 'user-options'; with: [
		self renderListOptionsOn: html.

		self renderTableOptionsOn: html.

		self renderBizagiOptionsOn: html.
	].