render
renderLinkToFrontofficeApplicationOn: html

	html div class: 'application-link'; with: [
		html anchor 
			callback: [self showFrontofficeLogin]; 
			with: [html figure 
								with: [html image url: (SEWAFIconLibrary / #documentflowchart128Png);
														title: ('Frontoffice Login' translateTo: selectedLanguage);
														altText: ('Frontoffice Login' translateTo: selectedLanguage).
										html figureCaption: ('Frontoffice Login' translateTo: selectedLanguage).
					].
			].
	]