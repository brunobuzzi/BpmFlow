other
renderNewProcessIconOn: html for: aBpmProcessDefinition

	html anchor callback: [self createInstanceProcessFor: aBpmProcessDefinition];
		with: [html image url: (SEWAFIconLibrary / #processadd32Png); 
					altText: ('Create New Process' translateIn: self session);
					title: ('Create New Process' translateIn: self session)].