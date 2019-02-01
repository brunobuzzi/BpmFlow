other
renderViewFormOn: html

	html form with: [
		html fieldSet disabled: true; with: [
			self renderFormFieldsOn: html.
		].
		html fieldSet with: [html submitButton callback: [self answer]; with: ('Close' translateIn: self session).].
	].