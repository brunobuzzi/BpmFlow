process state
renderChangeProcessStateFormOn: html

	html div class: 'display-inline-flex margin-left-10px margin-top-10px'; with: [

		html anchor class: 'margin-right-20px margin-top-5px';
			target: '_blank';
			callback: [self requestContext redirectTo: self getGemStoneServerConfiguration baseUrlDocumentation, '/functional-and-technical-information/states/process-states'];
			with: [
				html image url: (SEWAFIconLibrary / #helpicon16Png); 
					altText: 'Help on Process State'; 
					title: 'Help on Process State'.
		].

		selectedObject ifNotNil: [ 
			self renderProcessMapOn: html.
	 
			self renderPauseStateIconOn: html.
			self renderResumeStateIconOn: html.
			self renderAbortStateIconOn: html.

			(selectedObject isAborted and: [selectedObject isConfirmed not]) ifTrue: [self renderAbortConfirmationOn: html].
		].
		
	].