other
renderNewProcessIconOn: html for: aBpmProcessDefinition

	html anchor callback: [self createInstanceProcessFor: aBpmProcessDefinition];
		with: [html image url: (SEWAFIconLibrary / #processadd32Png); 
					altText: ('Create New Process' translateFor: self session user);
					title: ('Create New Process' translateFor: self session user)].