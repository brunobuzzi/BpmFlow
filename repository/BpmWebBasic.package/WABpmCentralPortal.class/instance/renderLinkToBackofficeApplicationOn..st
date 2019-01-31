render
renderLinkToBackofficeApplicationOn: html

	html div class: 'application-link'; with: [
		html anchor 
			callback: [self showBackofficeLogin]; 
			with: [html figure 
								with: [html image url: (SEWAFIconLibrary / #applicationsettings128Png);
														title: ('Backoffice Login' translateTo: selectedLanguage);
														altText: ('Backoffice Login' translateTo: selectedLanguage).
										html figureCaption: ('Backoffice Login' translateTo: selectedLanguage).
					].
			].
	]