other
renderCloseWindowsButtonOn: html

	html form with: [
		html fieldSet with:[
			html legend with: [html strong: ('Close Assignations' translateFor: self session user)].
				html submitButton callback: [self closeWindow]; with: ('Close' translateFor: self session user).
					].
				].