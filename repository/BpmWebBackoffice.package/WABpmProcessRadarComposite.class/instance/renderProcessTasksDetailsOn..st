tasks details
renderProcessTasksDetailsOn: html

	html anchor 
		class: 'cursor-pointer margin-left-5px';
		callback: [self viewProcessDetails]; 
		with: [html image url: (SEWAFIconLibrary / #actionsviewlisticons24Png); 
					title: ('View Tasks Details' translateIn: self session);
					altText: ('View Tasks Details' translateIn: self session)].
	html anchor 
		class: 'cursor-pointer margin-left-5px';
		callback: [self downloadXPDLFile];
		with: [html image url: (SEWAFIconLibrary / #verybasicdownloadfromcloudfilled24Png); 
					title: ('Download XPDL Bizagi File' translateIn: self session);
					altText: ('Download XPDL Bizagi File' translateIn: self session)].