other
renderLinkToFrontofficeApplicationOn: html

	html anchor callback: [self showFrontofficeApplication]; 
						with: [html image url: (SEWAFIconLibrary / #icon);
													title: 'Backoffice Login';
													altText: 'Backoffice Login'].