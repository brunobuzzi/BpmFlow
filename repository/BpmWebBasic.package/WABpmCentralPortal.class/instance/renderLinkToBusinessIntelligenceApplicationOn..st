render
renderLinkToBusinessIntelligenceApplicationOn: html

	html div class: 'application-link'; with: [
		html anchor 
			callback: [self showBusinessInteligenceLogin]; 
			with: [html figure 
								with: [html image url: (SEWAFIconLibrary / #piechart128Png);
														title: ('Business Intelligence Login' translateTo: selectedLanguage);
														altText: ('Business Intelligence Login' translateTo: selectedLanguage).
										html figureCaption: ('Business Intelligence Login' translateTo: selectedLanguage).
					].
			].
	]