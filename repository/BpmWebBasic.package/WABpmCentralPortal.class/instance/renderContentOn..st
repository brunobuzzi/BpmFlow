other
renderContentOn: html

	html div with: [self renderLinkToBackofficeApplicationOn: html].

	html div with: [self renderLinkToFrontofficeApplicationOn: html].

	html div with: [self renderLinkToBusinessInteligenceApplicationOn: html].