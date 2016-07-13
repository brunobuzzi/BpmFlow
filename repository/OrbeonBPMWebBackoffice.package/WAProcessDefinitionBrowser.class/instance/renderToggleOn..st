process
renderToggleOn: html
	
	html div class: 'float-left margin-left-5px'; with: [
		html anchor callback: [self toggleAnonymousStart]; 
						with: [html image url: (SEWAFIconLibrary / #actionsmailsend32Png); 
												title: ('Toggle Anonymous Start' translateFor: self session user); 
												altText: ('Toggle Anonymous Start' translateFor: self session user)]
	]