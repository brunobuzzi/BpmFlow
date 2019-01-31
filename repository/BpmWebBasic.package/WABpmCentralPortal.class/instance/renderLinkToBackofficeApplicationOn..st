other
renderLinkToBackofficeApplicationOn: html

	html anchor callback: [self showBackofficeLogin]; 
						with: [html image url: (SEWAFIconLibrary / #applicationsettings128Png);
													title: 'Backoffice Login';
													altText: 'Backoffice Login'].