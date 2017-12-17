other
renderChangeProcessStateFormOn: html

	html div class: 'display-inline-flex margin-left-10px margin-top-10px'; with: [
		selectedObject isPaused ifFalse: [
			html div class: 'float-left margin-left-5px'; with: [
				html anchor callback: [self toggleAnonymousStart]; 
								with: [html image url: (SEWAFIconLibrary / #pause24Png); 
														title: ('Pause Process' translateFor: self session user); 
														altText: ('Pause Process' translateFor: self session user)]
			]
		].
		selectedObject isRunning ifFalse: [
			html div class: 'float-left margin-left-5px'; with: [
				html anchor callback: [self toggleAnonymousStart]; 
								with: [html image url: (SEWAFIconLibrary / #continue24Png); 
														title: ('Resume Process' translateFor: self session user); 
														altText: ('Resume Process' translateFor: self session user)]
			]
		].
		selectedObject isAborted ifFalse: [
			html div class: 'float-left margin-left-5px'; with: [
				html anchor callback: [self toggleAnonymousStart]; 
								with: [html image url: (SEWAFIconLibrary / #symboldelete24Png); 
														title: ('Abort Process' translateFor: self session user); 
														altText: ('Abort Process' translateFor: self session user)]
			]
		].
		html anchor class: 'margin-left-20px margin-top-5px';
			target: '_blank';
			callback: [self requestContext redirectTo: self getGemStoneServerConfiguration baseUrlDocumentation, 'process-states.html'];
			with: [
				html image url: (SEWAFIconLibrary / #helpicon16Png); 
					altText: 'Help on Process State'; 
					title: 'Help on Process State'.
		]

	].