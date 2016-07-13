process
renderItemDescriptionTitleOn: html
	"The receiver render the summary of the object selected on the Lateral List "

	html output:  selectedLateralItem processName. "process name"
	selectedLateralItem isInCorruptedState 
	ifTrue: [html span with: [html strong: ('(Corrupted)' translateFor: self session user)]].

	selectedLateralItem hasFinalized
	ifFalse: [
		html anchor 
			callback: [self freeSelectedAssignment]; 
			with: [html image url: (SEWAFIconLibrary / #gointo24Png); 
						title: ('Free Process' translateFor: self session user);
						altText: ('Free Process' translateFor: self session user)]].

	html anchor 
		callback: [self downloadProcessMap]; 
		with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
					title: ('Process Map' translateFor: self session user);
					altText: ('Process Map' translateFor: self session user)].