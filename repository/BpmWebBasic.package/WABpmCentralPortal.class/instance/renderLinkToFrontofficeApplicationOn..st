render
renderLinkToFrontofficeApplicationOn: html

	html div class: 'application-link'; with: [
		html anchor 
			callback: [self showFrontofficeLogin]; 
			with: [html figure 
								with: [html image url: (SEWAFIconLibrary / #documentflowchart128Png);
														title: ('Frontoffice Login' translateIn: self session);
														altText: ('Frontoffice Login' translateIn: self session).
										html figureCaption: ('Frontoffice Login' translateIn: self session).
					].
			].
	]