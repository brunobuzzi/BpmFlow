other
renderItemDescriptionTitleOn: html

	html output:  selectedLateralItem processName.

	html anchor 
		class: 'cursor-pointer margin-left-5px';
		callback: [self viewSvgProcessMap]; 
		with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
					title: ('View Process Map' translateIn: self session);
					altText: ('View Process Map' translateIn: self session)].
	html anchor 
		class: 'cursor-pointer margin-left-5px';
		callback: [self downloadXPDLFile];
		with: [html image url: (SEWAFIconLibrary / #verybasicdownloadfromcloudfilled24Png); 
					title: ('Download XPDL Bizagi File' translateIn: self session);
					altText: ('Download XPDL Bizagi File' translateIn: self session)].

	self selectedProcess hasCreationTimer ifTrue: [ | anchorText iconName |
		self selectedProcess automaticCreationIsActive 
		ifTrue: [anchorText := 'Make Timer Passive'.
					iconName := #clock24Png] 
		ifFalse: [anchorText := 'Make Timer Active'.
					iconName := #utilitiesclock24Png].
		html anchor 
			class: 'cursor-pointer';
			callback: [self switchCreationTimerStatus]; 
			with: [html image url: (SEWAFIconLibrary / iconName); 
						title: (anchorText translateIn: self session);
						altText: (anchorText translateIn: self session)].
	].