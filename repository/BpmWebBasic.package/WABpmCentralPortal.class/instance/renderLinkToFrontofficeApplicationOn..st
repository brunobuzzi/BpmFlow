other
renderLinkToFrontofficeApplicationOn: html

	html anchor callback: [self showFrontofficeLogin]; 
						with: [html image url: (SEWAFIconLibrary / #documentflowchart128Png);
													title: 'Frontoffice Login';
													altText: 'Frontoffice Login'].