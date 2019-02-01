close
renderCloseWindowsButtonOn: html

	html anchor 
			class: 'cursor-pointer';
			callback: [self closeWindow];
			with: [html image url: (SEWAFIconLibrary / #close32Png); 
			title: ('Close' translateIn: self session);
			altText: ('Close' translateIn: self session)].