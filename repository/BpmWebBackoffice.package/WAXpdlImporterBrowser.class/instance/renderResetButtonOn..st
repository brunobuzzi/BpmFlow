other
renderResetButtonOn: html

	html anchor id: 'import-reset';
		class: 'cursor-pointer';
		callback: [self resetComponent];
		with: [html image url: (SEWAFIconLibrary / #reset32Png); 
				altText: ('Reset Import' translateFor: self session user); 
				title: ('Reset Import' translateFor: self session user)].