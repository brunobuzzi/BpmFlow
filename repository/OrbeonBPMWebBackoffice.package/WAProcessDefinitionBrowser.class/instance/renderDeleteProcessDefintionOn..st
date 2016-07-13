process
renderDeleteProcessDefintionOn: html

	html div class: 'float-left margin-left-5px'; with: [
		html anchor callback: [self removeProcessDefinition]; 
						with: [html image url: (SEWAFIconLibrary / #remove24Png); 
												title: ('Remove Process Definition' translateFor: self session user); 
												altText: ('Remove Process Definition' translateFor: self session user)]
	]