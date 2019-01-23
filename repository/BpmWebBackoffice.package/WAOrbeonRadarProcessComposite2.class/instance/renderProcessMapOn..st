export
renderProcessMapOn: html

	html anchor 
		class: 'cursor-pointer margin-left-5px';
		callback: [self viewSvgProcessMap]; 
		with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
					title: ('View Process Map' translateFor: self session user);
					altText: ('View Process Map' translateFor: self session user)].
	html anchor 
		class: 'cursor-pointer margin-left-5px';
		callback: [self downloadXPDLFile];
		with: [html image url: (SEWAFIconLibrary / #verybasicdownloadfromcloudfilled24Png); 
					title: ('Download XPDL Bizagi File' translateFor: self session user);
					altText: ('Download XPDL Bizagi File' translateFor: self session user)].