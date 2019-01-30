other
renderLinkToBackofficeApplicationOn: html

	html anchor callback: [self showBackofficeApplication]; 
						with: [html image url: (SEWAFIconLibrary / #icon);
													title: 'Backoffice Login';
													altText: 'Backoffice Login'].