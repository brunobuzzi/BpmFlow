render
renderItemDescriptionTitleOn: html
	| iconName toolTip |

	html output:  selectedLateralItem processName.

	iconName := (self componentValueAt: 'view.svg.map' ifAbsent: [false]) ifTrue: [#documentorganizationchart24Png] ifFalse: [#documentflowchart24Png].
	toolTip := (self componentValueAt: 'view.svg.map' ifAbsent: [false]) ifTrue: ['View Process Tasks'] ifFalse: ['View Process Map'].
	html anchor 
		class: 'cursor-pointer margin-left-5px';
		callback: [self viewSvgProcessMap]; 
		with: [html image url: (SEWAFIconLibrary / iconName); 
					title: (toolTip translateFor: self session user);
					altText: (toolTip translateFor: self session user)].

	html anchor 
		class: 'cursor-pointer';
		callback: [self downloadXPDLFile];
		with: [html image url: (SEWAFIconLibrary / #verybasicdownloadfromcloudfilled24Png); 
					title: ('Download XPDL Bizagi File' translateFor: self session user);
					altText: ('Download XPDL Bizagi File' translateFor: self session user)].