render
renderLinkToGemStoneAdminApplicationOn: html

	html div class: 'application-link'; with: [
		html anchor 
			callback: [self showGemStoneAdminLogin]; 
			with: [html figure 
								with: [html image url: (SEWAFIconLibrary / #documentflowchart128Png);
														title: ('GemStone Admin Login' translateTo: selectedLanguage);
														altText: ('GemStone Admin Login' translateTo: selectedLanguage).
										html figureCaption: ('GemStone Admin Login' translateTo: selectedLanguage).
					].
			].
	]