render
renderLinkToGemStoneAdminApplicationOn: html

	html div class: 'application-link'; with: [
		html anchor 
			callback: [self showGemStoneAdminLogin]; 
			with: [html figure 
								with: [html image url: (SEWAFIconLibrary / #miscwebdatabase128Png);
														title: ('GemStone Administration Login' translateTo: selectedLanguage);
														altText: ('GemStone Administration Login' translateTo: selectedLanguage).
										html figureCaption: ('GemStone Administration Login' translateTo: selectedLanguage).
					].
			].
	]