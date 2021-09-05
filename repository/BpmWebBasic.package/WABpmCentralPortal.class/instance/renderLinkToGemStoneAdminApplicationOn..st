render
renderLinkToGemStoneAdminApplicationOn: html

	html div class: 'application-link'; with: [
		html anchor 
			callback: [self showGemStoneAdminLogin]; 
			with: [html figure 
								with: [html image url: (SEWAFIconLibrary / #miscwebdatabase128Png);
														title: ('GemStone Administration Login' translateIn: self session);
														altText: ('GemStone Administration Login' translateIn: self session).
										html figureCaption: ('GemStone Administration Login' translateIn: self session).
					].
			].
	]