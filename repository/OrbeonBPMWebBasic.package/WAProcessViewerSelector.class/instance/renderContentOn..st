other
renderContentOn: html

	html div with: [
		html anchor 
			document: self viewProcessAsSVG mimeType: 'application/xhtml+xml';
			target: '_blank'; "open the SVG in a new tab or page"
			with: [html image url: (SEWAFIconLibrary / #fileadobeillustratorSVG0148Png); 
							title: ('SVG Map' translateFor: self session user);
							altText: ('SVG Map' translateFor: self session user)].
		html anchor 
			callback: [self downloadXPDL];
			with: [html image url: (SEWAFIconLibrary / #xpdlicon48Png); 
							title: ('Bizagi XPDL File' translateFor: self session user);
							altText: ('Bizagi XPDL File' translateFor: self session user)].

	]