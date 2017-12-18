process state
renderPauseStateIconOn: html

	selectedObject isPaused ifFalse: [
		html div class: 'float-left margin-left-5px'; with: [
			html anchor callback: [self pauseSelectedProcess]; 
							with: [html image url: (SEWAFIconLibrary / #pause24Png); 
													title: ('Pause Process' translateFor: self session user); 
													altText: ('Pause Process' translateFor: self session user)]
		]
	].