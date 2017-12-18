process state
renderChangeProcessStateFormOn: html

	html div class: 'display-inline-flex margin-left-10px margin-top-10px'; with: [

		self renderPauseStateIconOn: html.
		self renderResumeStateIconOn: html.
		self renderAbortStateIconOn: html.

		html anchor class: 'margin-left-20px margin-top-5px';
			target: '_blank';
			callback: [self requestContext redirectTo: self getGemStoneServerConfiguration baseUrlDocumentation, 'states/process-states.html'];
			with: [
				html image url: (SEWAFIconLibrary / #helpicon16Png); 
					altText: 'Help on Process State'; 
					title: 'Help on Process State'.
		]

	].