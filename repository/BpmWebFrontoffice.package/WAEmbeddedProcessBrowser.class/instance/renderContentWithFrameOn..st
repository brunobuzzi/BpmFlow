other
renderContentWithFrameOn: html

	html div id: 'close-form-frame'; 
		with: [html anchor callback: [orbeonFrame := nil]; 
			with: [html image url: (SEWAFIconLibrary / #symboldeleteiconPng);
													title: ('Close Form' translateIn: self session);
													altText: ('Close Form' translateIn: self session)]].
	html div id: 'orbeon-form-frame'; 
		with: [html div id: 'orbeon-form'; with: [html iframe url: orbeonFrame]].