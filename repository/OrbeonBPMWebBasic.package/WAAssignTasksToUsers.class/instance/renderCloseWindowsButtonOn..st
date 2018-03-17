other
renderCloseWindowsButtonOn: html

	html form with: [
		html fieldSet with:[
			html submitButton class: 'border-radius10px';
				callback: [self closeWindow]; 
				with: ('Close' translateFor: self session user).
			html legend with: [html strong: ('Close' translateFor: self session user)].
		].
	].