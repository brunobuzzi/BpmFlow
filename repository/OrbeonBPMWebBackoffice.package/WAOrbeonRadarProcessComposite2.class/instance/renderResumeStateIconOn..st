process state
renderResumeStateIconOn: html

	selectedObject isRunning ifFalse: [
		html div class: 'float-left margin-left-5px'; with: [
			html anchor callback: [self resumeSelectedProcess]; 
							with: [html image url: (SEWAFIconLibrary / #continue24Png); 
													title: ('Resume Process' translateFor: self session user); 
													altText: ('Resume Process' translateFor: self session user)]
		]
	].