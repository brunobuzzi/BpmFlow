process
renderItemDescriptionTitleOn: html
	"The receiver render the summary of the object selected on the Lateral List "

	html output:  selectedLateralItem processName. "process name"
	selectedLateralItem isInCorruptedState 
	ifTrue: [html span with: [html strong: ('(Corrupted)' translateFor: self session user)]].

	(selectedLateralItem hasFinalized not and: [selectedLateralItem canUnassign and:[(selectedLateralItem user == self session user) and: [selectedLateralItem hasAutomaticTaskAssignation not]]])
	ifTrue: [
		html anchor 
			callback: [self freeSelectedAssignment]; 
			with: [html image url: (SEWAFIconLibrary / #gointo24Png); 
						title: ('Release Task' translateFor: self session user);
						altText: ('Release Task' translateFor: self session user)]].

	html anchor 
		class: 'cursor-pointer margin-left-5px';
		callback: [self viewSvgProcessMap]; 
		with: [html image url: (SEWAFIconLibrary / #fileAdobeIllustratorSVG0124Png); 
					title: ('View SVG Process Map' translateFor: self session user);
					altText: ('View SVG Process Map' translateFor: self session user)].

	html anchor 
		class: 'cursor-pointer';
		callback: [self downloadXPDLFile];
		with: [html image url: (SEWAFIconLibrary / #xpdlicon24Png); 
					title: ('Download XPDL Bizagi File' translateFor: self session user);
					altText: ('Download XPDL Bizagi File' translateFor: self session user)].