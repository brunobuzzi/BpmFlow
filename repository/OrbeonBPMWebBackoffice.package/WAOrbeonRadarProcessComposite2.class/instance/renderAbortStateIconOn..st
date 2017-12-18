process state
renderAbortStateIconOn: html

	selectedObject isAborted ifFalse: [
		html div class: 'float-left margin-left-5px'; with: [
			html anchor callback: [self abortSelectedProcess]; 
							with: [html image url: (SEWAFIconLibrary / #symboldelete24Png); 
													title: ('Abort Process' translateFor: self session user); 
													altText: ('Abort Process' translateFor: self session user)]
		]
	].