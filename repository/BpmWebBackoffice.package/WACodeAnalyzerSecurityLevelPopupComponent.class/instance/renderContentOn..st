other
renderContentOn: html

	html form class: 'centered-unique-form'; with: [
		html fieldSet with: [
			html legend class: 'top-search-legend'; with: ('Set Recurity Levels' translateIn: self session).
			self renderSecurityForLoopsOn: html.
			self renderSecurityForQueriesOn: html.
			self renderSecurityForScriptsOn: html.
			self renderSecurityForStartEventsOn: html.
			self renderSecurityForIntermediateEventsOn: html.
			self renderSecurityForTransitionsOn: html.
			self renderCloseButtonOn: html.
		].
	].