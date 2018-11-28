close
renderCloseWindowsButtonOn: html

	html anchor 
			class: 'cursor-pointer';
			callback: [self closeWindow];
			with: [html image url: (SEWAFIconLibrary / #close32Png); 
			title: ('Close' translateFor: self session user);
			altText: ('Close' translateFor: self session user)].