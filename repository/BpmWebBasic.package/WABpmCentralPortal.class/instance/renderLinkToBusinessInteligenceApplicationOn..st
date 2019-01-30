other
renderLinkToBusinessInteligenceApplicationOn: html

	html anchor callback: [self showBusinessInteligenceApplication]; 
						with: [html image url: (SEWAFIconLibrary / #icon);
													title: 'Backoffice Login';
													altText: 'Backoffice Login'].