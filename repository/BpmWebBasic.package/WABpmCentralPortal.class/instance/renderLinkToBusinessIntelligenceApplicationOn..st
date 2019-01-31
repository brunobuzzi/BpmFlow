other
renderLinkToBusinessIntelligenceApplicationOn: html

	html anchor callback: [self showBusinessInteligenceLogin]; 
						with: [html image url: (SEWAFIconLibrary / #piechart128Png);
													title: 'Business Intelligence Login';
													altText: 'Business Intelligence Login'].