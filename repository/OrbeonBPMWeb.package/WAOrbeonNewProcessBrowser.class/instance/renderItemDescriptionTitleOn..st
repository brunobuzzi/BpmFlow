other
renderItemDescriptionTitleOn: html

	selectedLateralItem ifNil: [^self].
	
	html output:  ('Create new Instance of [' translateFor: self session user), selectedLateralItem processName, ']'.

	html anchor 
		callback: [self downloadProcessMap]; 
		with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
					title: ('Process Map' translateFor: self session user);
					altText: ('Process Map' translateFor: self session user)].