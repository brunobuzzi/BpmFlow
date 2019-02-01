other
renderResetButtonOn: html

	html anchor id: 'import-reset';
		class: 'cursor-pointer';
		callback: [self resetComponent];
		with: [html image url: (SEWAFIconLibrary / #reset32Png); 
				altText: ('Reset Import' translateIn: self session); 
				title: ('Reset Import' translateIn: self session)].