other
renderEditFormOn: html

	html form with: [
		html fieldSet with: [
			self renderFormFieldsOn: html.
			html submitButton callback: [self answer]; with: ('Close' translateIn: self session).
		].
	].