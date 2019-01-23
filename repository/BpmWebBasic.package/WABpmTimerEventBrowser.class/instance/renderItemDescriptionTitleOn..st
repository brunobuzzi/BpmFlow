other
renderItemDescriptionTitleOn: html

	html output:  selectedLateralItem processName.

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
						title: (anchorText translateFor: self session user);
						altText: (anchorText translateFor: self session user)].
	].