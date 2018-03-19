other
renderContentOn: html

	html div class: 'process-viewer-selector'; with: [
		html anchor 
			document: self viewProcessAsSVG mimeType: 'application/xhtml+xml';
			target: '_blank'; "open the SVG in a new tab or page"
			with: [html image url: (SEWAFIconLibrary / #fileadobeillustratorSVG0148Png); 
							title: ('SVG Map' translateFor: self session user);
							altText: ('SVG Map' translateFor: self session user).
					html output: ('View Process online as SVG' translateFor: self session user)].
		html anchor 
			callback: [self downloadXPDL];
			with: [html image url: (SEWAFIconLibrary / #xpdlicon48Png); 
							title: ('Bizagi XPDL File' translateFor: self session user);
							altText: ('Bizagi XPDL File' translateFor: self session user).
					html output: ('Download XPDL to View Process in Bizagi' translateFor: self session user)].

	]