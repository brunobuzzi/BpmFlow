render
renderLinkToBackofficeApplicationOn: html

	html div class: 'application-link'; with: [
		html anchor 
			callback: [self showBackofficeLogin]; 
			with: [html figure 
								with: [html image url: (SEWAFIconLibrary / #applicationsettings128Png);
														title: ('Backoffice Login' translateIn: self session);
														altText: ('Backoffice Login' translateIn: self session).
										html figureCaption: ('Backoffice Login' translateIn: self session).
					].
			].
	]